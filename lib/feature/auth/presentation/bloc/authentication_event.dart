part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _Started;
  const factory AuthenticationEvent.generateToken({
    required String clientId,
    required String password,
    required String accountNumber,
  }) = _GenerateToken;

  const factory AuthenticationEvent.generateOtp({
    required String accountNumber,
    required String referenceNumber,
    required String channelCode,
  }) = _GenerateOtp;

  const factory AuthenticationEvent.resendOtp({
    required String accountNumber,
    required String referenceNumber,
    required String channelCode,
  }) = _ResendOtp;

  const factory AuthenticationEvent.verifyOtp({
    required String channelCode,
    required String otp,
    required String referenceNumber,
    required String appId,
  }) = _VerifyOtp;

  const factory AuthenticationEvent.signOut() = _SignOut;
}
