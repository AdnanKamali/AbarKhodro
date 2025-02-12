// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getListPagination,
    required TResult Function() getNextPage,
    required TResult Function(ConversationModel conversationModel) create,
    required TResult Function(ConversationModel conversationModel) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getListPagination,
    TResult? Function()? getNextPage,
    TResult? Function(ConversationModel conversationModel)? create,
    TResult? Function(ConversationModel conversationModel)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getListPagination,
    TResult Function()? getNextPage,
    TResult Function(ConversationModel conversationModel)? create,
    TResult Function(ConversationModel conversationModel)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetListPagination value) getListPagination,
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetListPagination value)? getListPagination,
    TResult? Function(_GetNextPage value)? getNextPage,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetListPagination value)? getListPagination,
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res, ConversationEvent>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res, $Val extends ConversationEvent>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationEvent
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
    extends _$ConversationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ConversationEvent.started()';
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
    required TResult Function() getListPagination,
    required TResult Function() getNextPage,
    required TResult Function(ConversationModel conversationModel) create,
    required TResult Function(ConversationModel conversationModel) update,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getListPagination,
    TResult? Function()? getNextPage,
    TResult? Function(ConversationModel conversationModel)? create,
    TResult? Function(ConversationModel conversationModel)? update,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getListPagination,
    TResult Function()? getNextPage,
    TResult Function(ConversationModel conversationModel)? create,
    TResult Function(ConversationModel conversationModel)? update,
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
    required TResult Function(_GetListPagination value) getListPagination,
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetListPagination value)? getListPagination,
    TResult? Function(_GetNextPage value)? getNextPage,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetListPagination value)? getListPagination,
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ConversationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetListPaginationImplCopyWith<$Res> {
  factory _$$GetListPaginationImplCopyWith(_$GetListPaginationImpl value,
          $Res Function(_$GetListPaginationImpl) then) =
      __$$GetListPaginationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListPaginationImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$GetListPaginationImpl>
    implements _$$GetListPaginationImplCopyWith<$Res> {
  __$$GetListPaginationImplCopyWithImpl(_$GetListPaginationImpl _value,
      $Res Function(_$GetListPaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetListPaginationImpl implements _GetListPagination {
  const _$GetListPaginationImpl();

  @override
  String toString() {
    return 'ConversationEvent.getListPagination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetListPaginationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getListPagination,
    required TResult Function() getNextPage,
    required TResult Function(ConversationModel conversationModel) create,
    required TResult Function(ConversationModel conversationModel) update,
  }) {
    return getListPagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getListPagination,
    TResult? Function()? getNextPage,
    TResult? Function(ConversationModel conversationModel)? create,
    TResult? Function(ConversationModel conversationModel)? update,
  }) {
    return getListPagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getListPagination,
    TResult Function()? getNextPage,
    TResult Function(ConversationModel conversationModel)? create,
    TResult Function(ConversationModel conversationModel)? update,
    required TResult orElse(),
  }) {
    if (getListPagination != null) {
      return getListPagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetListPagination value) getListPagination,
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return getListPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetListPagination value)? getListPagination,
    TResult? Function(_GetNextPage value)? getNextPage,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return getListPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetListPagination value)? getListPagination,
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (getListPagination != null) {
      return getListPagination(this);
    }
    return orElse();
  }
}

abstract class _GetListPagination implements ConversationEvent {
  const factory _GetListPagination() = _$GetListPaginationImpl;
}

/// @nodoc
abstract class _$$GetNextPageImplCopyWith<$Res> {
  factory _$$GetNextPageImplCopyWith(
          _$GetNextPageImpl value, $Res Function(_$GetNextPageImpl) then) =
      __$$GetNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNextPageImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$GetNextPageImpl>
    implements _$$GetNextPageImplCopyWith<$Res> {
  __$$GetNextPageImplCopyWithImpl(
      _$GetNextPageImpl _value, $Res Function(_$GetNextPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNextPageImpl implements _GetNextPage {
  const _$GetNextPageImpl();

  @override
  String toString() {
    return 'ConversationEvent.getNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getListPagination,
    required TResult Function() getNextPage,
    required TResult Function(ConversationModel conversationModel) create,
    required TResult Function(ConversationModel conversationModel) update,
  }) {
    return getNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getListPagination,
    TResult? Function()? getNextPage,
    TResult? Function(ConversationModel conversationModel)? create,
    TResult? Function(ConversationModel conversationModel)? update,
  }) {
    return getNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getListPagination,
    TResult Function()? getNextPage,
    TResult Function(ConversationModel conversationModel)? create,
    TResult Function(ConversationModel conversationModel)? update,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetListPagination value) getListPagination,
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetListPagination value)? getListPagination,
    TResult? Function(_GetNextPage value)? getNextPage,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetListPagination value)? getListPagination,
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(this);
    }
    return orElse();
  }
}

abstract class _GetNextPage implements ConversationEvent {
  const factory _GetNextPage() = _$GetNextPageImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationModel conversationModel});

  $ConversationModelCopyWith<$Res> get conversationModel;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationModel = null,
  }) {
    return _then(_$CreateImpl(
      conversationModel: null == conversationModel
          ? _value.conversationModel
          : conversationModel // ignore: cast_nullable_to_non_nullable
              as ConversationModel,
    ));
  }

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationModelCopyWith<$Res> get conversationModel {
    return $ConversationModelCopyWith<$Res>(_value.conversationModel, (value) {
      return _then(_value.copyWith(conversationModel: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl({required this.conversationModel});

  @override
  final ConversationModel conversationModel;

  @override
  String toString() {
    return 'ConversationEvent.create(conversationModel: $conversationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.conversationModel, conversationModel) ||
                other.conversationModel == conversationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationModel);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getListPagination,
    required TResult Function() getNextPage,
    required TResult Function(ConversationModel conversationModel) create,
    required TResult Function(ConversationModel conversationModel) update,
  }) {
    return create(conversationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getListPagination,
    TResult? Function()? getNextPage,
    TResult? Function(ConversationModel conversationModel)? create,
    TResult? Function(ConversationModel conversationModel)? update,
  }) {
    return create?.call(conversationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getListPagination,
    TResult Function()? getNextPage,
    TResult Function(ConversationModel conversationModel)? create,
    TResult Function(ConversationModel conversationModel)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(conversationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetListPagination value) getListPagination,
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetListPagination value)? getListPagination,
    TResult? Function(_GetNextPage value)? getNextPage,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetListPagination value)? getListPagination,
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements ConversationEvent {
  const factory _Create({required final ConversationModel conversationModel}) =
      _$CreateImpl;

  ConversationModel get conversationModel;

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConversationModel conversationModel});

  $ConversationModelCopyWith<$Res> get conversationModel;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationModel = null,
  }) {
    return _then(_$UpdateImpl(
      conversationModel: null == conversationModel
          ? _value.conversationModel
          : conversationModel // ignore: cast_nullable_to_non_nullable
              as ConversationModel,
    ));
  }

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationModelCopyWith<$Res> get conversationModel {
    return $ConversationModelCopyWith<$Res>(_value.conversationModel, (value) {
      return _then(_value.copyWith(conversationModel: value));
    });
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl({required this.conversationModel});

  @override
  final ConversationModel conversationModel;

  @override
  String toString() {
    return 'ConversationEvent.update(conversationModel: $conversationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.conversationModel, conversationModel) ||
                other.conversationModel == conversationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationModel);

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getListPagination,
    required TResult Function() getNextPage,
    required TResult Function(ConversationModel conversationModel) create,
    required TResult Function(ConversationModel conversationModel) update,
  }) {
    return update(conversationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getListPagination,
    TResult? Function()? getNextPage,
    TResult? Function(ConversationModel conversationModel)? create,
    TResult? Function(ConversationModel conversationModel)? update,
  }) {
    return update?.call(conversationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getListPagination,
    TResult Function()? getNextPage,
    TResult Function(ConversationModel conversationModel)? create,
    TResult Function(ConversationModel conversationModel)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(conversationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetListPagination value) getListPagination,
    required TResult Function(_GetNextPage value) getNextPage,
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetListPagination value)? getListPagination,
    TResult? Function(_GetNextPage value)? getNextPage,
    TResult? Function(_Create value)? create,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetListPagination value)? getListPagination,
    TResult Function(_GetNextPage value)? getNextPage,
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ConversationEvent {
  const factory _Update({required final ConversationModel conversationModel}) =
      _$UpdateImpl;

  ConversationModel get conversationModel;

  /// Create a copy of ConversationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingForNext,
    required TResult Function(
            List<ConversationModel> paginationConversationList)
        gotList,
    required TResult Function(FailureResponse failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingForNext,
    TResult? Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult? Function(FailureResponse failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingForNext,
    TResult Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult Function(FailureResponse failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingForNext value) loadingForNext,
    required TResult Function(_GotList value) gotList,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingForNext value)? loadingForNext,
    TResult? Function(_GotList value)? gotList,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingForNext value)? loadingForNext,
    TResult Function(_GotList value)? gotList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res, ConversationState>;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res, $Val extends ConversationState>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationState
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
    extends _$ConversationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ConversationState.initial()';
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
    required TResult Function() loadingForNext,
    required TResult Function(
            List<ConversationModel> paginationConversationList)
        gotList,
    required TResult Function(FailureResponse failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingForNext,
    TResult? Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult? Function(FailureResponse failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingForNext,
    TResult Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult Function(FailureResponse failure)? error,
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
    required TResult Function(_LoadingForNext value) loadingForNext,
    required TResult Function(_GotList value) gotList,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingForNext value)? loadingForNext,
    TResult? Function(_GotList value)? gotList,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingForNext value)? loadingForNext,
    TResult Function(_GotList value)? gotList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationState {
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
    extends _$ConversationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ConversationState.loading()';
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
    required TResult Function() loadingForNext,
    required TResult Function(
            List<ConversationModel> paginationConversationList)
        gotList,
    required TResult Function(FailureResponse failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingForNext,
    TResult? Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult? Function(FailureResponse failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingForNext,
    TResult Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult Function(FailureResponse failure)? error,
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
    required TResult Function(_LoadingForNext value) loadingForNext,
    required TResult Function(_GotList value) gotList,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingForNext value)? loadingForNext,
    TResult? Function(_GotList value)? gotList,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingForNext value)? loadingForNext,
    TResult Function(_GotList value)? gotList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ConversationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingForNextImplCopyWith<$Res> {
  factory _$$LoadingForNextImplCopyWith(_$LoadingForNextImpl value,
          $Res Function(_$LoadingForNextImpl) then) =
      __$$LoadingForNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingForNextImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$LoadingForNextImpl>
    implements _$$LoadingForNextImplCopyWith<$Res> {
  __$$LoadingForNextImplCopyWithImpl(
      _$LoadingForNextImpl _value, $Res Function(_$LoadingForNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingForNextImpl implements _LoadingForNext {
  const _$LoadingForNextImpl();

  @override
  String toString() {
    return 'ConversationState.loadingForNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingForNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingForNext,
    required TResult Function(
            List<ConversationModel> paginationConversationList)
        gotList,
    required TResult Function(FailureResponse failure) error,
  }) {
    return loadingForNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingForNext,
    TResult? Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult? Function(FailureResponse failure)? error,
  }) {
    return loadingForNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingForNext,
    TResult Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult Function(FailureResponse failure)? error,
    required TResult orElse(),
  }) {
    if (loadingForNext != null) {
      return loadingForNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingForNext value) loadingForNext,
    required TResult Function(_GotList value) gotList,
    required TResult Function(_Error value) error,
  }) {
    return loadingForNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingForNext value)? loadingForNext,
    TResult? Function(_GotList value)? gotList,
    TResult? Function(_Error value)? error,
  }) {
    return loadingForNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingForNext value)? loadingForNext,
    TResult Function(_GotList value)? gotList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingForNext != null) {
      return loadingForNext(this);
    }
    return orElse();
  }
}

abstract class _LoadingForNext implements ConversationState {
  const factory _LoadingForNext() = _$LoadingForNextImpl;
}

/// @nodoc
abstract class _$$GotListImplCopyWith<$Res> {
  factory _$$GotListImplCopyWith(
          _$GotListImpl value, $Res Function(_$GotListImpl) then) =
      __$$GotListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationModel> paginationConversationList});
}

/// @nodoc
class __$$GotListImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$GotListImpl>
    implements _$$GotListImplCopyWith<$Res> {
  __$$GotListImplCopyWithImpl(
      _$GotListImpl _value, $Res Function(_$GotListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationConversationList = null,
  }) {
    return _then(_$GotListImpl(
      paginationConversationList: null == paginationConversationList
          ? _value._paginationConversationList
          : paginationConversationList // ignore: cast_nullable_to_non_nullable
              as List<ConversationModel>,
    ));
  }
}

/// @nodoc

class _$GotListImpl implements _GotList {
  const _$GotListImpl(
      {required final List<ConversationModel> paginationConversationList})
      : _paginationConversationList = paginationConversationList;

  final List<ConversationModel> _paginationConversationList;
  @override
  List<ConversationModel> get paginationConversationList {
    if (_paginationConversationList is EqualUnmodifiableListView)
      return _paginationConversationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paginationConversationList);
  }

  @override
  String toString() {
    return 'ConversationState.gotList(paginationConversationList: $paginationConversationList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotListImpl &&
            const DeepCollectionEquality().equals(
                other._paginationConversationList,
                _paginationConversationList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_paginationConversationList));

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotListImplCopyWith<_$GotListImpl> get copyWith =>
      __$$GotListImplCopyWithImpl<_$GotListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingForNext,
    required TResult Function(
            List<ConversationModel> paginationConversationList)
        gotList,
    required TResult Function(FailureResponse failure) error,
  }) {
    return gotList(paginationConversationList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingForNext,
    TResult? Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult? Function(FailureResponse failure)? error,
  }) {
    return gotList?.call(paginationConversationList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingForNext,
    TResult Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult Function(FailureResponse failure)? error,
    required TResult orElse(),
  }) {
    if (gotList != null) {
      return gotList(paginationConversationList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingForNext value) loadingForNext,
    required TResult Function(_GotList value) gotList,
    required TResult Function(_Error value) error,
  }) {
    return gotList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingForNext value)? loadingForNext,
    TResult? Function(_GotList value)? gotList,
    TResult? Function(_Error value)? error,
  }) {
    return gotList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingForNext value)? loadingForNext,
    TResult Function(_GotList value)? gotList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (gotList != null) {
      return gotList(this);
    }
    return orElse();
  }
}

abstract class _GotList implements ConversationState {
  const factory _GotList(
          {required final List<ConversationModel> paginationConversationList}) =
      _$GotListImpl;

  List<ConversationModel> get paginationConversationList;

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotListImplCopyWith<_$GotListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FailureResponse failure});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureResponse,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.failure});

  @override
  final FailureResponse failure;

  @override
  String toString() {
    return 'ConversationState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ConversationState
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
    required TResult Function() loadingForNext,
    required TResult Function(
            List<ConversationModel> paginationConversationList)
        gotList,
    required TResult Function(FailureResponse failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingForNext,
    TResult? Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult? Function(FailureResponse failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingForNext,
    TResult Function(List<ConversationModel> paginationConversationList)?
        gotList,
    TResult Function(FailureResponse failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingForNext value) loadingForNext,
    required TResult Function(_GotList value) gotList,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingForNext value)? loadingForNext,
    TResult? Function(_GotList value)? gotList,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingForNext value)? loadingForNext,
    TResult Function(_GotList value)? gotList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ConversationState {
  const factory _Error({required final FailureResponse failure}) = _$ErrorImpl;

  FailureResponse get failure;

  /// Create a copy of ConversationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
