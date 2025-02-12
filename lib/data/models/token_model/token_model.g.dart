// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginTokenModelImpl _$$LoginTokenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginTokenModelImpl(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
    );

Map<String, dynamic> _$$LoginTokenModelImplToJson(
        _$LoginTokenModelImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
