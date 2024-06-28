import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_tamayoz/feature/auth/app/authenication_facade.dart';
import 'package:ai_tamayoz/core/constants/string_const.dart';


part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';


class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
    final AuthenticationFacade _authenticationFacade;

   AuthenticationBloc({
    required AuthenticationFacade authenticationFacade,
  })  : _authenticationFacade = authenticationFacade,
        super(const AuthenticationState.initial()) {
    on<_GenerateOtp>(_handleGenerateOtp);
    on<_ResendOtp>(_handleResendOtp);
    on<_VerifyOtp>(_handleVerifyOtp);
    on<_SignOut>(_handleSignOut);
    on<_GenerateToken>(_handleGenerateToken);
  }

    FutureOr<void> _handleGenerateToken(
      _GenerateToken event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.settingUpTamayozAuth());

    final generateTokenResult = await _authenticationFacade.generateToken(
      clientId: event.clientId,
      password: event.password,
      accountNumber: event.accountNumber,
    );

    // i.e if generateTokenResult fails
    if (generateTokenResult.isLeft()) {
      final failureMessage = generateTokenResult
          .getLeft()
          .map((t) => t.message)
          .getOrElse(() => "An error occurred");
      emit(AuthenticationState.TamayozAuthFailed(failureMessage));
      return;
    }

    final token =
        generateTokenResult.getRight().map((t) => "12345").getOrElse(() => "");

    if (token.isEmpty) {
      final message = generateTokenResult
          .getLeft()
          .map((t) => t.message)
          .getOrElse(() => "An error occurred");
      emit(AuthenticationState.TamayozAuthFailed(message));
      return;
    }

    // save token to local storage
    final res = await _authenticationFacade.saveToken(token);

    if (res.isLeft()) {
      final message = res
          .getLeft()
          .map((t) => t.message)
          .getOrElse(() => "An error occurred");
      emit(AuthenticationState.TamayozAuthFailed(message));
      return;
    }

   

 

  

    emit(
      AuthenticationState.TamayozAuthSuccessful(
        data: (
          selectedCustomerDetails: "selectedCustomerDetails",
          accountSummary: "accountSummary",
          accountNumber: event.accountNumber,
          customerDetails: "customerDetails",
          token: token,
          timeOfLogin: DateTime.now().toIso8601String(),
          // TODO: set this at the point of choosing between OTP or Card.
          method: "OTP",
        ),
      ),
    );
  }



      FutureOr<void> _handleGenerateOtp(
    _GenerateOtp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.generatingOtp());

    final generateOtpResult = await _authenticationFacade.generateOtp(
      accountNumber: event.accountNumber,
      channelCode: StringConst.apiChannelCode,
      referenceNumber: event.referenceNumber,
    );

    generateOtpResult.fold(
      (failure) => emit(
        AuthenticationState.otpGenerationFailed(failure.message),
      ),
      (successMessage) => emit(
        AuthenticationState.otpGenerated(
          successMessage: successMessage,
          referenceNumber: event.referenceNumber,
        ),
      ),
    );
  }

  FutureOr<void> _handleResendOtp(
      _ResendOtp event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.generatingOtp());

    final resendOtpResult = await _authenticationFacade.generateOtp(
      accountNumber: event.accountNumber,
      channelCode: StringConst.apiChannelCode,
      referenceNumber: event.referenceNumber,
    );

    resendOtpResult.fold(
      (failure) => emit(
        AuthenticationState.otpGenerationFailed(failure.message),
      ),
      (successMessage) => emit(
        AuthenticationState.otpResent(
          successMessage: successMessage,
          referenceNumber: event.referenceNumber,
        ),
      ),
    );
  }

  FutureOr<void> _handleVerifyOtp(
    _VerifyOtp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.verifyingOtp());

    final verifyOtpResult = await _authenticationFacade.verifyOtp(
      channelCode: StringConst.apiChannelCode,
      otp: event.otp,
      referenceNumber: event.referenceNumber,
      appId: event.appId,
    );

    verifyOtpResult.fold(
      (failure) => emit(
        AuthenticationState.otpVerificationFailed(failure.message),
      ),
      (successMessage) => emit(
        AuthenticationState.otpVerified(successMessage),
      ),
    );
  }

  FutureOr<void> _handleSignOut(
      _SignOut event, Emitter<AuthenticationState> emit) {
    _authenticationFacade.clearAuthToken();

    emit(AuthenticationState.signedOut());
  }
}






