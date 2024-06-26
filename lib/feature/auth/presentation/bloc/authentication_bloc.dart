import 'package:bloc/bloc.dart';
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






