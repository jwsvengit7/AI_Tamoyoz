// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GenerateTokenImplCopyWith<$Res> {
  factory _$$GenerateTokenImplCopyWith(
          _$GenerateTokenImpl value, $Res Function(_$GenerateTokenImpl) then) =
      __$$GenerateTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId, String password, String accountNumber});
}

/// @nodoc
class __$$GenerateTokenImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$GenerateTokenImpl>
    implements _$$GenerateTokenImplCopyWith<$Res> {
  __$$GenerateTokenImplCopyWithImpl(
      _$GenerateTokenImpl _value, $Res Function(_$GenerateTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? password = null,
    Object? accountNumber = null,
  }) {
    return _then(_$GenerateTokenImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateTokenImpl implements _GenerateToken {
  const _$GenerateTokenImpl(
      {required this.clientId,
      required this.password,
      required this.accountNumber});

  @override
  final String clientId;
  @override
  final String password;
  @override
  final String accountNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.generateToken(clientId: $clientId, password: $password, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateTokenImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, password, accountNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateTokenImplCopyWith<_$GenerateTokenImpl> get copyWith =>
      __$$GenerateTokenImplCopyWithImpl<_$GenerateTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) {
    return generateToken(clientId, password, accountNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) {
    return generateToken?.call(clientId, password, accountNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (generateToken != null) {
      return generateToken(clientId, password, accountNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) {
    return generateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return generateToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (generateToken != null) {
      return generateToken(this);
    }
    return orElse();
  }
}

abstract class _GenerateToken implements AuthenticationEvent {
  const factory _GenerateToken(
      {required final String clientId,
      required final String password,
      required final String accountNumber}) = _$GenerateTokenImpl;

  String get clientId;
  String get password;
  String get accountNumber;
  @JsonKey(ignore: true)
  _$$GenerateTokenImplCopyWith<_$GenerateTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateOtpImplCopyWith<$Res> {
  factory _$$GenerateOtpImplCopyWith(
          _$GenerateOtpImpl value, $Res Function(_$GenerateOtpImpl) then) =
      __$$GenerateOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountNumber, String referenceNumber, String channelCode});
}

/// @nodoc
class __$$GenerateOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$GenerateOtpImpl>
    implements _$$GenerateOtpImplCopyWith<$Res> {
  __$$GenerateOtpImplCopyWithImpl(
      _$GenerateOtpImpl _value, $Res Function(_$GenerateOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
    Object? referenceNumber = null,
    Object? channelCode = null,
  }) {
    return _then(_$GenerateOtpImpl(
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateOtpImpl implements _GenerateOtp {
  const _$GenerateOtpImpl(
      {required this.accountNumber,
      required this.referenceNumber,
      required this.channelCode});

  @override
  final String accountNumber;
  @override
  final String referenceNumber;
  @override
  final String channelCode;

  @override
  String toString() {
    return 'AuthenticationEvent.generateOtp(accountNumber: $accountNumber, referenceNumber: $referenceNumber, channelCode: $channelCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateOtpImpl &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountNumber, referenceNumber, channelCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateOtpImplCopyWith<_$GenerateOtpImpl> get copyWith =>
      __$$GenerateOtpImplCopyWithImpl<_$GenerateOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) {
    return generateOtp(accountNumber, referenceNumber, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) {
    return generateOtp?.call(accountNumber, referenceNumber, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(accountNumber, referenceNumber, channelCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) {
    return generateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return generateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(this);
    }
    return orElse();
  }
}

abstract class _GenerateOtp implements AuthenticationEvent {
  const factory _GenerateOtp(
      {required final String accountNumber,
      required final String referenceNumber,
      required final String channelCode}) = _$GenerateOtpImpl;

  String get accountNumber;
  String get referenceNumber;
  String get channelCode;
  @JsonKey(ignore: true)
  _$$GenerateOtpImplCopyWith<_$GenerateOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountNumber, String referenceNumber, String channelCode});
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = null,
    Object? referenceNumber = null,
    Object? channelCode = null,
  }) {
    return _then(_$ResendOtpImpl(
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendOtpImpl implements _ResendOtp {
  const _$ResendOtpImpl(
      {required this.accountNumber,
      required this.referenceNumber,
      required this.channelCode});

  @override
  final String accountNumber;
  @override
  final String referenceNumber;
  @override
  final String channelCode;

  @override
  String toString() {
    return 'AuthenticationEvent.resendOtp(accountNumber: $accountNumber, referenceNumber: $referenceNumber, channelCode: $channelCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpImpl &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountNumber, referenceNumber, channelCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      __$$ResendOtpImplCopyWithImpl<_$ResendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) {
    return resendOtp(accountNumber, referenceNumber, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) {
    return resendOtp?.call(accountNumber, referenceNumber, channelCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(accountNumber, referenceNumber, channelCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements AuthenticationEvent {
  const factory _ResendOtp(
      {required final String accountNumber,
      required final String referenceNumber,
      required final String channelCode}) = _$ResendOtpImpl;

  String get accountNumber;
  String get referenceNumber;
  String get channelCode;
  @JsonKey(ignore: true)
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String channelCode, String otp, String referenceNumber, String appId});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = null,
    Object? otp = null,
    Object? referenceNumber = null,
    Object? appId = null,
  }) {
    return _then(_$VerifyOtpImpl(
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl(
      {required this.channelCode,
      required this.otp,
      required this.referenceNumber,
      required this.appId});

  @override
  final String channelCode;
  @override
  final String otp;
  @override
  final String referenceNumber;
  @override
  final String appId;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyOtp(channelCode: $channelCode, otp: $otp, referenceNumber: $referenceNumber, appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, channelCode, otp, referenceNumber, appId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) {
    return verifyOtp(channelCode, otp, referenceNumber, appId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) {
    return verifyOtp?.call(channelCode, otp, referenceNumber, appId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(channelCode, otp, referenceNumber, appId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthenticationEvent {
  const factory _VerifyOtp(
      {required final String channelCode,
      required final String otp,
      required final String referenceNumber,
      required final String appId}) = _$VerifyOtpImpl;

  String get channelCode;
  String get otp;
  String get referenceNumber;
  String get appId;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String clientId, String password, String accountNumber)
        generateToken,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        generateOtp,
    required TResult Function(
            String accountNumber, String referenceNumber, String channelCode)
        resendOtp,
    required TResult Function(String channelCode, String otp,
            String referenceNumber, String appId)
        verifyOtp,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult? Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult? Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String clientId, String password, String accountNumber)?
        generateToken,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        generateOtp,
    TResult Function(
            String accountNumber, String referenceNumber, String channelCode)?
        resendOtp,
    TResult Function(String channelCode, String otp, String referenceNumber,
            String appId)?
        verifyOtp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateToken value) generateToken,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateToken value)? generateToken,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateToken value)? generateToken,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthenticationEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TamayozAuthFailedImplCopyWith<$Res> {
  factory _$$TamayozAuthFailedImplCopyWith(_$TamayozAuthFailedImpl value,
          $Res Function(_$TamayozAuthFailedImpl) then) =
      __$$TamayozAuthFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TamayozAuthFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$TamayozAuthFailedImpl>
    implements _$$TamayozAuthFailedImplCopyWith<$Res> {
  __$$TamayozAuthFailedImplCopyWithImpl(_$TamayozAuthFailedImpl _value,
      $Res Function(_$TamayozAuthFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TamayozAuthFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TamayozAuthFailedImpl implements _TamayozAuthFailed {
  const _$TamayozAuthFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.TamayozAuthFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TamayozAuthFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TamayozAuthFailedImplCopyWith<_$TamayozAuthFailedImpl> get copyWith =>
      __$$TamayozAuthFailedImplCopyWithImpl<_$TamayozAuthFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return TamayozAuthFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return TamayozAuthFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (TamayozAuthFailed != null) {
      return TamayozAuthFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return TamayozAuthFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return TamayozAuthFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (TamayozAuthFailed != null) {
      return TamayozAuthFailed(this);
    }
    return orElse();
  }
}

abstract class _TamayozAuthFailed implements AuthenticationState {
  const factory _TamayozAuthFailed(final String message) =
      _$TamayozAuthFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TamayozAuthFailedImplCopyWith<_$TamayozAuthFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingUpTamayozAuthImplCopyWith<$Res> {
  factory _$$SettingUpTamayozAuthImplCopyWith(_$SettingUpTamayozAuthImpl value,
          $Res Function(_$SettingUpTamayozAuthImpl) then) =
      __$$SettingUpTamayozAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingUpTamayozAuthImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SettingUpTamayozAuthImpl>
    implements _$$SettingUpTamayozAuthImplCopyWith<$Res> {
  __$$SettingUpTamayozAuthImplCopyWithImpl(_$SettingUpTamayozAuthImpl _value,
      $Res Function(_$SettingUpTamayozAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingUpTamayozAuthImpl implements _SettingUpTamayozAuth {
  const _$SettingUpTamayozAuthImpl();

  @override
  String toString() {
    return 'AuthenticationState.settingUpTamayozAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingUpTamayozAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return settingUpTamayozAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return settingUpTamayozAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (settingUpTamayozAuth != null) {
      return settingUpTamayozAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return settingUpTamayozAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return settingUpTamayozAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (settingUpTamayozAuth != null) {
      return settingUpTamayozAuth(this);
    }
    return orElse();
  }
}

abstract class _SettingUpTamayozAuth implements AuthenticationState {
  const factory _SettingUpTamayozAuth() = _$SettingUpTamayozAuthImpl;
}

/// @nodoc
abstract class _$$TamayozAuthSuccessfulImplCopyWith<$Res> {
  factory _$$TamayozAuthSuccessfulImplCopyWith(
          _$TamayozAuthSuccessfulImpl value,
          $Res Function(_$TamayozAuthSuccessfulImpl) then) =
      __$$TamayozAuthSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object data});
}

/// @nodoc
class __$$TamayozAuthSuccessfulImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$TamayozAuthSuccessfulImpl>
    implements _$$TamayozAuthSuccessfulImplCopyWith<$Res> {
  __$$TamayozAuthSuccessfulImplCopyWithImpl(_$TamayozAuthSuccessfulImpl _value,
      $Res Function(_$TamayozAuthSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TamayozAuthSuccessfulImpl(
      data: null == data ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$TamayozAuthSuccessfulImpl implements _TamayozAuthSuccessful {
  const _$TamayozAuthSuccessfulImpl({required this.data});

  @override
  final Object data;

  @override
  String toString() {
    return 'AuthenticationState.TamayozAuthSuccessful(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TamayozAuthSuccessfulImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TamayozAuthSuccessfulImplCopyWith<_$TamayozAuthSuccessfulImpl>
      get copyWith => __$$TamayozAuthSuccessfulImplCopyWithImpl<
          _$TamayozAuthSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return TamayozAuthSuccessful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return TamayozAuthSuccessful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (TamayozAuthSuccessful != null) {
      return TamayozAuthSuccessful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return TamayozAuthSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return TamayozAuthSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (TamayozAuthSuccessful != null) {
      return TamayozAuthSuccessful(this);
    }
    return orElse();
  }
}

abstract class _TamayozAuthSuccessful implements AuthenticationState {
  const factory _TamayozAuthSuccessful({required final Object data}) =
      _$TamayozAuthSuccessfulImpl;

  Object get data;
  @JsonKey(ignore: true)
  _$$TamayozAuthSuccessfulImplCopyWith<_$TamayozAuthSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratingOtpImplCopyWith<$Res> {
  factory _$$GeneratingOtpImplCopyWith(
          _$GeneratingOtpImpl value, $Res Function(_$GeneratingOtpImpl) then) =
      __$$GeneratingOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneratingOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$GeneratingOtpImpl>
    implements _$$GeneratingOtpImplCopyWith<$Res> {
  __$$GeneratingOtpImplCopyWithImpl(
      _$GeneratingOtpImpl _value, $Res Function(_$GeneratingOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneratingOtpImpl implements _GeneratingOtp {
  const _$GeneratingOtpImpl();

  @override
  String toString() {
    return 'AuthenticationState.generatingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneratingOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return generatingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return generatingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (generatingOtp != null) {
      return generatingOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return generatingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return generatingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (generatingOtp != null) {
      return generatingOtp(this);
    }
    return orElse();
  }
}

abstract class _GeneratingOtp implements AuthenticationState {
  const factory _GeneratingOtp() = _$GeneratingOtpImpl;
}

/// @nodoc
abstract class _$$OtpGenerationFailedImplCopyWith<$Res> {
  factory _$$OtpGenerationFailedImplCopyWith(_$OtpGenerationFailedImpl value,
          $Res Function(_$OtpGenerationFailedImpl) then) =
      __$$OtpGenerationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$OtpGenerationFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpGenerationFailedImpl>
    implements _$$OtpGenerationFailedImplCopyWith<$Res> {
  __$$OtpGenerationFailedImplCopyWithImpl(_$OtpGenerationFailedImpl _value,
      $Res Function(_$OtpGenerationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$OtpGenerationFailedImpl(
      null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpGenerationFailedImpl implements _OtpGenerationFailed {
  const _$OtpGenerationFailedImpl(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'AuthenticationState.otpGenerationFailed(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpGenerationFailedImpl &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpGenerationFailedImplCopyWith<_$OtpGenerationFailedImpl> get copyWith =>
      __$$OtpGenerationFailedImplCopyWithImpl<_$OtpGenerationFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return otpGenerationFailed(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return otpGenerationFailed?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (otpGenerationFailed != null) {
      return otpGenerationFailed(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return otpGenerationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return otpGenerationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (otpGenerationFailed != null) {
      return otpGenerationFailed(this);
    }
    return orElse();
  }
}

abstract class _OtpGenerationFailed implements AuthenticationState {
  const factory _OtpGenerationFailed(final String failureMessage) =
      _$OtpGenerationFailedImpl;

  String get failureMessage;
  @JsonKey(ignore: true)
  _$$OtpGenerationFailedImplCopyWith<_$OtpGenerationFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpGeneratedImplCopyWith<$Res> {
  factory _$$OtpGeneratedImplCopyWith(
          _$OtpGeneratedImpl value, $Res Function(_$OtpGeneratedImpl) then) =
      __$$OtpGeneratedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage, String referenceNumber});
}

/// @nodoc
class __$$OtpGeneratedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpGeneratedImpl>
    implements _$$OtpGeneratedImplCopyWith<$Res> {
  __$$OtpGeneratedImplCopyWithImpl(
      _$OtpGeneratedImpl _value, $Res Function(_$OtpGeneratedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
    Object? referenceNumber = null,
  }) {
    return _then(_$OtpGeneratedImpl(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpGeneratedImpl implements _OtpGenerated {
  const _$OtpGeneratedImpl(
      {required this.successMessage, required this.referenceNumber});

  @override
  final String successMessage;
  @override
  final String referenceNumber;

  @override
  String toString() {
    return 'AuthenticationState.otpGenerated(successMessage: $successMessage, referenceNumber: $referenceNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpGeneratedImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage, referenceNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpGeneratedImplCopyWith<_$OtpGeneratedImpl> get copyWith =>
      __$$OtpGeneratedImplCopyWithImpl<_$OtpGeneratedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return otpGenerated(successMessage, referenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return otpGenerated?.call(successMessage, referenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (otpGenerated != null) {
      return otpGenerated(successMessage, referenceNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return otpGenerated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return otpGenerated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (otpGenerated != null) {
      return otpGenerated(this);
    }
    return orElse();
  }
}

abstract class _OtpGenerated implements AuthenticationState {
  const factory _OtpGenerated(
      {required final String successMessage,
      required final String referenceNumber}) = _$OtpGeneratedImpl;

  String get successMessage;
  String get referenceNumber;
  @JsonKey(ignore: true)
  _$$OtpGeneratedImplCopyWith<_$OtpGeneratedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResentImplCopyWith<$Res> {
  factory _$$OtpResentImplCopyWith(
          _$OtpResentImpl value, $Res Function(_$OtpResentImpl) then) =
      __$$OtpResentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage, String referenceNumber});
}

/// @nodoc
class __$$OtpResentImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpResentImpl>
    implements _$$OtpResentImplCopyWith<$Res> {
  __$$OtpResentImplCopyWithImpl(
      _$OtpResentImpl _value, $Res Function(_$OtpResentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
    Object? referenceNumber = null,
  }) {
    return _then(_$OtpResentImpl(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpResentImpl implements _OtpResent {
  const _$OtpResentImpl(
      {required this.successMessage, required this.referenceNumber});

  @override
  final String successMessage;
  @override
  final String referenceNumber;

  @override
  String toString() {
    return 'AuthenticationState.otpResent(successMessage: $successMessage, referenceNumber: $referenceNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResentImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage, referenceNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResentImplCopyWith<_$OtpResentImpl> get copyWith =>
      __$$OtpResentImplCopyWithImpl<_$OtpResentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return otpResent(successMessage, referenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return otpResent?.call(successMessage, referenceNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(successMessage, referenceNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return otpResent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return otpResent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(this);
    }
    return orElse();
  }
}

abstract class _OtpResent implements AuthenticationState {
  const factory _OtpResent(
      {required final String successMessage,
      required final String referenceNumber}) = _$OtpResentImpl;

  String get successMessage;
  String get referenceNumber;
  @JsonKey(ignore: true)
  _$$OtpResentImplCopyWith<_$OtpResentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyingOtpImplCopyWith<$Res> {
  factory _$$VerifyingOtpImplCopyWith(
          _$VerifyingOtpImpl value, $Res Function(_$VerifyingOtpImpl) then) =
      __$$VerifyingOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyingOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$VerifyingOtpImpl>
    implements _$$VerifyingOtpImplCopyWith<$Res> {
  __$$VerifyingOtpImplCopyWithImpl(
      _$VerifyingOtpImpl _value, $Res Function(_$VerifyingOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyingOtpImpl implements _VerifyingOtp {
  const _$VerifyingOtpImpl();

  @override
  String toString() {
    return 'AuthenticationState.verifyingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyingOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return verifyingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return verifyingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return verifyingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return verifyingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyingOtp implements AuthenticationState {
  const factory _VerifyingOtp() = _$VerifyingOtpImpl;
}

/// @nodoc
abstract class _$$OtpVerificationFailedImplCopyWith<$Res> {
  factory _$$OtpVerificationFailedImplCopyWith(
          _$OtpVerificationFailedImpl value,
          $Res Function(_$OtpVerificationFailedImpl) then) =
      __$$OtpVerificationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpVerificationFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpVerificationFailedImpl>
    implements _$$OtpVerificationFailedImplCopyWith<$Res> {
  __$$OtpVerificationFailedImplCopyWithImpl(_$OtpVerificationFailedImpl _value,
      $Res Function(_$OtpVerificationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OtpVerificationFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationFailedImpl implements _OtpVerificationFailed {
  const _$OtpVerificationFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.otpVerificationFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationFailedImplCopyWith<_$OtpVerificationFailedImpl>
      get copyWith => __$$OtpVerificationFailedImplCopyWithImpl<
          _$OtpVerificationFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return otpVerificationFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return otpVerificationFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (otpVerificationFailed != null) {
      return otpVerificationFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return otpVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return otpVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (otpVerificationFailed != null) {
      return otpVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class _OtpVerificationFailed implements AuthenticationState {
  const factory _OtpVerificationFailed(final String message) =
      _$OtpVerificationFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OtpVerificationFailedImplCopyWith<_$OtpVerificationFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
          _$OtpVerifiedImpl value, $Res Function(_$OtpVerifiedImpl) then) =
      __$$OtpVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
      _$OtpVerifiedImpl _value, $Res Function(_$OtpVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$OtpVerifiedImpl(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerifiedImpl implements _OtpVerified {
  const _$OtpVerifiedImpl(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'AuthenticationState.otpVerified(successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      __$$OtpVerifiedImplCopyWithImpl<_$OtpVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return otpVerified(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return otpVerified?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class _OtpVerified implements AuthenticationState {
  const factory _OtpVerified(final String successMessage) = _$OtpVerifiedImpl;

  String get successMessage;
  @JsonKey(ignore: true)
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOutImpl implements _SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'AuthenticationState.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) TamayozAuthFailed,
    required TResult Function() settingUpTamayozAuth,
    required TResult Function(Object data) TamayozAuthSuccessful,
    required TResult Function() generatingOtp,
    required TResult Function(String failureMessage) otpGenerationFailed,
    required TResult Function(String successMessage, String referenceNumber)
        otpGenerated,
    required TResult Function(String successMessage, String referenceNumber)
        otpResent,
    required TResult Function() verifyingOtp,
    required TResult Function(String message) otpVerificationFailed,
    required TResult Function(String successMessage) otpVerified,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? TamayozAuthFailed,
    TResult? Function()? settingUpTamayozAuth,
    TResult? Function(Object data)? TamayozAuthSuccessful,
    TResult? Function()? generatingOtp,
    TResult? Function(String failureMessage)? otpGenerationFailed,
    TResult? Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult? Function(String successMessage, String referenceNumber)? otpResent,
    TResult? Function()? verifyingOtp,
    TResult? Function(String message)? otpVerificationFailed,
    TResult? Function(String successMessage)? otpVerified,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? TamayozAuthFailed,
    TResult Function()? settingUpTamayozAuth,
    TResult Function(Object data)? TamayozAuthSuccessful,
    TResult Function()? generatingOtp,
    TResult Function(String failureMessage)? otpGenerationFailed,
    TResult Function(String successMessage, String referenceNumber)?
        otpGenerated,
    TResult Function(String successMessage, String referenceNumber)? otpResent,
    TResult Function()? verifyingOtp,
    TResult Function(String message)? otpVerificationFailed,
    TResult Function(String successMessage)? otpVerified,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TamayozAuthFailed value) TamayozAuthFailed,
    required TResult Function(_SettingUpTamayozAuth value) settingUpTamayozAuth,
    required TResult Function(_TamayozAuthSuccessful value)
        TamayozAuthSuccessful,
    required TResult Function(_GeneratingOtp value) generatingOtp,
    required TResult Function(_OtpGenerationFailed value) otpGenerationFailed,
    required TResult Function(_OtpGenerated value) otpGenerated,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_OtpVerificationFailed value)
        otpVerificationFailed,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult? Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult? Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult? Function(_GeneratingOtp value)? generatingOtp,
    TResult? Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult? Function(_OtpGenerated value)? otpGenerated,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TamayozAuthFailed value)? TamayozAuthFailed,
    TResult Function(_SettingUpTamayozAuth value)? settingUpTamayozAuth,
    TResult Function(_TamayozAuthSuccessful value)? TamayozAuthSuccessful,
    TResult Function(_GeneratingOtp value)? generatingOtp,
    TResult Function(_OtpGenerationFailed value)? otpGenerationFailed,
    TResult Function(_OtpGenerated value)? otpGenerated,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_OtpVerificationFailed value)? otpVerificationFailed,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthenticationState {
  const factory _SignedOut() = _$SignedOutImpl;
}
