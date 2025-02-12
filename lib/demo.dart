import 'package:abarkhodro_application/data/models/chat_model/chat_model.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:abarkhodro_application/data/models/pagination_model/pagination_model.dart';

final conversationDemoPaginationEmpty = PaginationModel(
  count: 0,
  next: null,
  previous: null,
  results: [],
);

final conversationDemoPagination = PaginationModel(
  count: 123,
  next: "http://api.example.org/accounts/?page=4",
  previous: "http://api.example.org/accounts/?page=2",
  results: [
    ConversationModel(
      id: 0,
      title: "String",
      createdAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      updatedAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      messages: [],
    ),
    ConversationModel(
      id: 0,
      title: "String",
      createdAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      updatedAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      messages: [
        ChatModel(
          content: "String",
          role: Role.user,
          timestamp: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
        )
      ],
    ),
    ConversationModel(
      id: 0,
      title: "String",
      createdAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      updatedAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      messages: [
        ChatModel(
          content: "String",
          role: Role.assistant,
          timestamp: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
        )
      ],
    ),
    ConversationModel(
      id: 0,
      title: "String",
      createdAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      updatedAt: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
      messages: [
        ...List.generate(
          30,
          (index) => ChatModel(
            content:
                "String $index \n lsfklasjfkl;jsakfl;jsakdlfjsal\n;dfjaslfdjskdhfjkfjksdhfjkshdjfkashdjkfldsafhs\njkfhsjfklskldjfakl;sjfkdalfs;\nladfjsaklfjdksdfksdjkfshadjfjkdhfjsd",
            role: index % 2 == 0 ? Role.user : Role.assistant,
            timestamp: DateTime.tryParse("2025-02-09T06:59:11.472Z"),
          ),
        ),
      ],
    ),
  ],
);
