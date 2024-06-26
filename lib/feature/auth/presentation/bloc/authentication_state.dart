part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.TamayozAuthFailed(String message) =
      _TamayozAuthFailed;

  const factory AuthenticationState.settingUpTamayozAuth() = _SettingUpTamayozAuth;

  const factory AuthenticationState.TamayozAuthSuccessful({
    required Object data,
  }) = _TamayozAuthSuccessful;

  const factory AuthenticationState.generatingOtp() = _GeneratingOtp;

  const factory AuthenticationState.otpGenerationFailed(String failureMessage) =
      _OtpGenerationFailed;

  const factory AuthenticationState.otpGenerated({
    required String successMessage,
    required String referenceNumber,
  }) = _OtpGenerated;

  const factory AuthenticationState.otpResent({
    required String successMessage,
    required String referenceNumber,
  }) = _OtpResent;

  const factory AuthenticationState.verifyingOtp() = _VerifyingOtp;

  const factory AuthenticationState.otpVerificationFailed(String message) =
      _OtpVerificationFailed;

  const factory AuthenticationState.otpVerified(String successMessage) =
      _OtpVerified;

  const factory AuthenticationState.signedOut() = _SignedOut;
}
