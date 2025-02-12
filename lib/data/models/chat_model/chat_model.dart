import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

enum Role {
  system("سیستم"),
  user("کاربر"),
  assistant("دستیار هوش مصنوعی");

  final String name;
  const Role(this.name);
}

@freezed
class ChatModel with _$ChatModel {
  factory ChatModel({
    int? id,
    required String content,
    required Role role,
    DateTime? timestamp,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, Object?> json) =>
      _$ChatModelFromJson(json);
}
