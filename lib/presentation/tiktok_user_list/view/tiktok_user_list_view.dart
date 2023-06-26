import 'package:flutter/material.dart';
import '../event/tiktok_user_list_event.dart';
import '../provider/tiktok_user_list_provider.dart';

class TiktokUserListView extends TiktokUserListConsumerWidget {
  const TiktokUserListView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TiktokUserListView'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'TiktokUserList: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(TiktokUserListIncrementEvent()),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
