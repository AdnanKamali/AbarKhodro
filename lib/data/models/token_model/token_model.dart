import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
class LoginTokenModel with _$LoginTokenModel {
  const factory LoginTokenModel({
    required String refresh,
    required String access,
  }) = _LoginTokenModel;
  factory LoginTokenModel.fromJson(Map<String, Object?> json) =>
      _$LoginTokenModelFromJson(json);
}
