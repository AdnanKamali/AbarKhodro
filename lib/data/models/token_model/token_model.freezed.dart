// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginTokenModel _$LoginTokenModelFromJson(Map<String, dynamic> json) {
  return _LoginTokenModel.fromJson(json);
}

/// @nodoc
mixin _$LoginTokenModel {
  String get refresh => throw _privateConstructorUsedError;
  String get access => throw _privateConstructorUsedError;

  /// Serializes this LoginTokenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginTokenModelCopyWith<LoginTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginTokenModelCopyWith<$Res> {
  factory $LoginTokenModelCopyWith(
          LoginTokenModel value, $Res Function(LoginTokenModel) then) =
      _$LoginTokenModelCopyWithImpl<$Res, LoginTokenModel>;
  @useResult
  $Res call({String refresh, String access});
}

/// @nodoc
class _$LoginTokenModelCopyWithImpl<$Res, $Val extends LoginTokenModel>
    implements $LoginTokenModelCopyWith<$Res> {
  _$LoginTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginTokenModelImplCopyWith<$Res>
    implements $LoginTokenModelCopyWith<$Res> {
  factory _$$LoginTokenModelImplCopyWith(_$LoginTokenModelImpl value,
          $Res Function(_$LoginTokenModelImpl) then) =
      __$$LoginTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh, String access});
}

/// @nodoc
class __$$LoginTokenModelImplCopyWithImpl<$Res>
    extends _$LoginTokenModelCopyWithImpl<$Res, _$LoginTokenModelImpl>
    implements _$$LoginTokenModelImplCopyWith<$Res> {
  __$$LoginTokenModelImplCopyWithImpl(
      _$LoginTokenModelImpl _value, $Res Function(_$LoginTokenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? access = null,
  }) {
    return _then(_$LoginTokenModelImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginTokenModelImpl implements _LoginTokenModel {
  const _$LoginTokenModelImpl({required this.refresh, required this.access});

  factory _$LoginTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginTokenModelImplFromJson(json);

  @override
  final String refresh;
  @override
  final String access;

  @override
  String toString() {
    return 'LoginTokenModel(refresh: $refresh, access: $access)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginTokenModelImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.access, access) || other.access == access));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refresh, access);

  /// Create a copy of LoginTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginTokenModelImplCopyWith<_$LoginTokenModelImpl> get copyWith =>
      __$$LoginTokenModelImplCopyWithImpl<_$LoginTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginTokenModelImplToJson(
      this,
    );
  }
}

abstract class _LoginTokenModel implements LoginTokenModel {
  const factory _LoginTokenModel(
      {required final String refresh,
      required final String access}) = _$LoginTokenModelImpl;

  factory _LoginTokenModel.fromJson(Map<String, dynamic> json) =
      _$LoginTokenModelImpl.fromJson;

  @override
  String get refresh;
  @override
  String get access;

  /// Create a copy of LoginTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginTokenModelImplCopyWith<_$LoginTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
