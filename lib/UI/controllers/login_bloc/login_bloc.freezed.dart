// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) sendPhoneNumber,
    required TResult Function(String otpCode) sendOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? sendPhoneNumber,
    TResult? Function(String otpCode)? sendOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? sendPhoneNumber,
    TResult Function(String otpCode)? sendOtpCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendPhoneNumber value) sendPhoneNumber,
    required TResult Function(_SendOtpCode value) sendOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
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
    required TResult Function(String phoneNumber) sendPhoneNumber,
    required TResult Function(String otpCode) sendOtpCode,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? sendPhoneNumber,
    TResult? Function(String otpCode)? sendOtpCode,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? sendPhoneNumber,
    TResult Function(String otpCode)? sendOtpCode,
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
    required TResult Function(_SendPhoneNumber value) sendPhoneNumber,
    required TResult Function(_SendOtpCode value) sendOtpCode,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendPhoneNumberImplCopyWith<$Res> {
  factory _$$SendPhoneNumberImplCopyWith(_$SendPhoneNumberImpl value,
          $Res Function(_$SendPhoneNumberImpl) then) =
      __$$SendPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SendPhoneNumberImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SendPhoneNumberImpl>
    implements _$$SendPhoneNumberImplCopyWith<$Res> {
  __$$SendPhoneNumberImplCopyWithImpl(
      _$SendPhoneNumberImpl _value, $Res Function(_$SendPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SendPhoneNumberImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPhoneNumberImpl implements _SendPhoneNumber {
  const _$SendPhoneNumberImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.sendPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPhoneNumberImplCopyWith<_$SendPhoneNumberImpl> get copyWith =>
      __$$SendPhoneNumberImplCopyWithImpl<_$SendPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) sendPhoneNumber,
    required TResult Function(String otpCode) sendOtpCode,
  }) {
    return sendPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? sendPhoneNumber,
    TResult? Function(String otpCode)? sendOtpCode,
  }) {
    return sendPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? sendPhoneNumber,
    TResult Function(String otpCode)? sendOtpCode,
    required TResult orElse(),
  }) {
    if (sendPhoneNumber != null) {
      return sendPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendPhoneNumber value) sendPhoneNumber,
    required TResult Function(_SendOtpCode value) sendOtpCode,
  }) {
    return sendPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
  }) {
    return sendPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    required TResult orElse(),
  }) {
    if (sendPhoneNumber != null) {
      return sendPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumber implements LoginEvent {
  const factory _SendPhoneNumber({required final String phoneNumber}) =
      _$SendPhoneNumberImpl;

  String get phoneNumber;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPhoneNumberImplCopyWith<_$SendPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpCodeImplCopyWith<$Res> {
  factory _$$SendOtpCodeImplCopyWith(
          _$SendOtpCodeImpl value, $Res Function(_$SendOtpCodeImpl) then) =
      __$$SendOtpCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$SendOtpCodeImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SendOtpCodeImpl>
    implements _$$SendOtpCodeImplCopyWith<$Res> {
  __$$SendOtpCodeImplCopyWithImpl(
      _$SendOtpCodeImpl _value, $Res Function(_$SendOtpCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$SendOtpCodeImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpCodeImpl implements _SendOtpCode {
  const _$SendOtpCodeImpl({required this.otpCode});

  @override
  final String otpCode;

  @override
  String toString() {
    return 'LoginEvent.sendOtpCode(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpCodeImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpCodeImplCopyWith<_$SendOtpCodeImpl> get copyWith =>
      __$$SendOtpCodeImplCopyWithImpl<_$SendOtpCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) sendPhoneNumber,
    required TResult Function(String otpCode) sendOtpCode,
  }) {
    return sendOtpCode(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? sendPhoneNumber,
    TResult? Function(String otpCode)? sendOtpCode,
  }) {
    return sendOtpCode?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? sendPhoneNumber,
    TResult Function(String otpCode)? sendOtpCode,
    required TResult orElse(),
  }) {
    if (sendOtpCode != null) {
      return sendOtpCode(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendPhoneNumber value) sendPhoneNumber,
    required TResult Function(_SendOtpCode value) sendOtpCode,
  }) {
    return sendOtpCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
  }) {
    return sendOtpCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendPhoneNumber value)? sendPhoneNumber,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    required TResult orElse(),
  }) {
    if (sendOtpCode != null) {
      return sendOtpCode(this);
    }
    return orElse();
  }
}

abstract class _SendOtpCode implements LoginEvent {
  const factory _SendOtpCode({required final String otpCode}) =
      _$SendOtpCodeImpl;

  String get otpCode;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpCodeImplCopyWith<_$SendOtpCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String phoneNumber) sendedOtp,
    required TResult Function(LoginTokenModel loginTokenModel) logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String phoneNumber)? sendedOtp,
    TResult? Function(LoginTokenModel loginTokenModel)? logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String phoneNumber)? sendedOtp,
    TResult Function(LoginTokenModel loginTokenModel)? logedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SendedOtp value) sendedOtp,
    required TResult Function(_LogedIn value) logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SendedOtp value)? sendedOtp,
    TResult? Function(_LogedIn value)? logedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SendedOtp value)? sendedOtp,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String phoneNumber) sendedOtp,
    required TResult Function(LoginTokenModel loginTokenModel) logedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String phoneNumber)? sendedOtp,
    TResult? Function(LoginTokenModel loginTokenModel)? logedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String phoneNumber)? sendedOtp,
    TResult Function(LoginTokenModel loginTokenModel)? logedIn,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SendedOtp value) sendedOtp,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SendedOtp value)? sendedOtp,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SendedOtp value)? sendedOtp,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String phoneNumber) sendedOtp,
    required TResult Function(LoginTokenModel loginTokenModel) logedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String phoneNumber)? sendedOtp,
    TResult? Function(LoginTokenModel loginTokenModel)? logedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String phoneNumber)? sendedOtp,
    TResult Function(LoginTokenModel loginTokenModel)? logedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SendedOtp value) sendedOtp,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SendedOtp value)? sendedOtp,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SendedOtp value)? sendedOtp,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String phoneNumber) sendedOtp,
    required TResult Function(LoginTokenModel loginTokenModel) logedIn,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String phoneNumber)? sendedOtp,
    TResult? Function(LoginTokenModel loginTokenModel)? logedIn,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String phoneNumber)? sendedOtp,
    TResult Function(LoginTokenModel loginTokenModel)? logedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SendedOtp value) sendedOtp,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SendedOtp value)? sendedOtp,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SendedOtp value)? sendedOtp,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendedOtpImplCopyWith<$Res> {
  factory _$$SendedOtpImplCopyWith(
          _$SendedOtpImpl value, $Res Function(_$SendedOtpImpl) then) =
      __$$SendedOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SendedOtpImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SendedOtpImpl>
    implements _$$SendedOtpImplCopyWith<$Res> {
  __$$SendedOtpImplCopyWithImpl(
      _$SendedOtpImpl _value, $Res Function(_$SendedOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SendedOtpImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendedOtpImpl implements _SendedOtp {
  const _$SendedOtpImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginState.sendedOtp(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendedOtpImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendedOtpImplCopyWith<_$SendedOtpImpl> get copyWith =>
      __$$SendedOtpImplCopyWithImpl<_$SendedOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String phoneNumber) sendedOtp,
    required TResult Function(LoginTokenModel loginTokenModel) logedIn,
  }) {
    return sendedOtp(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String phoneNumber)? sendedOtp,
    TResult? Function(LoginTokenModel loginTokenModel)? logedIn,
  }) {
    return sendedOtp?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String phoneNumber)? sendedOtp,
    TResult Function(LoginTokenModel loginTokenModel)? logedIn,
    required TResult orElse(),
  }) {
    if (sendedOtp != null) {
      return sendedOtp(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SendedOtp value) sendedOtp,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return sendedOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SendedOtp value)? sendedOtp,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return sendedOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SendedOtp value)? sendedOtp,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (sendedOtp != null) {
      return sendedOtp(this);
    }
    return orElse();
  }
}

abstract class _SendedOtp implements LoginState {
  const factory _SendedOtp({required final String phoneNumber}) =
      _$SendedOtpImpl;

  String get phoneNumber;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendedOtpImplCopyWith<_$SendedOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogedInImplCopyWith<$Res> {
  factory _$$LogedInImplCopyWith(
          _$LogedInImpl value, $Res Function(_$LogedInImpl) then) =
      __$$LogedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginTokenModel loginTokenModel});

  $LoginTokenModelCopyWith<$Res> get loginTokenModel;
}

/// @nodoc
class __$$LogedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LogedInImpl>
    implements _$$LogedInImplCopyWith<$Res> {
  __$$LogedInImplCopyWithImpl(
      _$LogedInImpl _value, $Res Function(_$LogedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginTokenModel = null,
  }) {
    return _then(_$LogedInImpl(
      loginTokenModel: null == loginTokenModel
          ? _value.loginTokenModel
          : loginTokenModel // ignore: cast_nullable_to_non_nullable
              as LoginTokenModel,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginTokenModelCopyWith<$Res> get loginTokenModel {
    return $LoginTokenModelCopyWith<$Res>(_value.loginTokenModel, (value) {
      return _then(_value.copyWith(loginTokenModel: value));
    });
  }
}

/// @nodoc

class _$LogedInImpl implements _LogedIn {
  const _$LogedInImpl({required this.loginTokenModel});

  @override
  final LoginTokenModel loginTokenModel;

  @override
  String toString() {
    return 'LoginState.logedIn(loginTokenModel: $loginTokenModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogedInImpl &&
            (identical(other.loginTokenModel, loginTokenModel) ||
                other.loginTokenModel == loginTokenModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginTokenModel);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogedInImplCopyWith<_$LogedInImpl> get copyWith =>
      __$$LogedInImplCopyWithImpl<_$LogedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String phoneNumber) sendedOtp,
    required TResult Function(LoginTokenModel loginTokenModel) logedIn,
  }) {
    return logedIn(loginTokenModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String phoneNumber)? sendedOtp,
    TResult? Function(LoginTokenModel loginTokenModel)? logedIn,
  }) {
    return logedIn?.call(loginTokenModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String phoneNumber)? sendedOtp,
    TResult Function(LoginTokenModel loginTokenModel)? logedIn,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(loginTokenModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SendedOtp value) sendedOtp,
    required TResult Function(_LogedIn value) logedIn,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SendedOtp value)? sendedOtp,
    TResult? Function(_LogedIn value)? logedIn,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SendedOtp value)? sendedOtp,
    TResult Function(_LogedIn value)? logedIn,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _LogedIn implements LoginState {
  const factory _LogedIn({required final LoginTokenModel loginTokenModel}) =
      _$LogedInImpl;

  LoginTokenModel get loginTokenModel;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogedInImplCopyWith<_$LogedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
