import 'package:abarkhodro_application/UI/controllers/conversation_bloc/conversation_bloc.dart';
import 'package:abarkhodro_application/UI/screens/conversations/widgets/conversation_tile.dart';
import 'package:abarkhodro_application/data/models/conversation_model/conversation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaginatedListView extends StatefulWidget {
  const PaginatedListView({super.key, required this.conversationList});

  final List<ConversationModel> conversationList;

  @override
  State<PaginatedListView> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  final ScrollController _scrollController = ScrollController();

  late ConversationBloc _conversationBloc;

  @override
  void initState() {
    super.initState();
    _conversationBloc = context.read<ConversationBloc>();
    _scrollController.addListener(_scrollListener);
  }

  // Listener for detecting when the user scrolls to the bottom
  void _scrollListener() {
    if (_scrollController.position.extentAfter < 200) {
      // If we reached the bottom, load more data

      if (!_conversationBloc.state.maybeMap(
        orElse: () => false,
        loadingForNext: (_) => true,
      )) {
        _conversationBloc.add(ConversationEvent.getNextPage());
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _conversationBloc.conversationList.length +
          (_conversationBloc.state.maybeMap(
            orElse: () => false,
            loadingForNext: (_) => true,
          )
              ? 1
              : 0),
      itemBuilder: (context, index) {
        if (index == widget.conversationList.length) {
          return Center(
              child: SizedBox(
            height: 20,
            child: CircularProgressIndicator(),
          )); // Loading indicator
        }
        final conversation = _conversationBloc.conversationList[index];

        return ConversationTile(conversationModel: conversation);
      },
    );
  }
}
