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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (MediaQuery.sizeOf(context).height > 900) {
          _conversationBloc.add(ConversationEvent.getNextPage());
        }
      },
    );
    _scrollController.addListener(_scrollListener);
  }

  // Listener for detecting when the user scrolls to the bottom
  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!_conversationBloc.state.maybeWhen(
        orElse: () => false,
        loadingForNext: () => true,
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
      itemCount: widget.conversationList.length +
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
            width: 20,
            child: CircularProgressIndicator(),
          ));
        }
        final conversation = widget.conversationList[index];

        return ConversationTile(conversationModel: conversation);
      },
    );
  }
}
