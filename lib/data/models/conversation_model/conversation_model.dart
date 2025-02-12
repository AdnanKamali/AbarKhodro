// ignore_for_file: invalid_annotation_target

import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
class ConversationModel with _$ConversationModel {
  factory ConversationModel({
    int? id,
    required String title,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    List<ChatModel>? messages,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, Object?> json) =>
      _$ConversationModelFromJson(json);
}
