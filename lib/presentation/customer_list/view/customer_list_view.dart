import 'package:flutter/material.dart';
import '../event/customer_list_event.dart';
import '../provider/customer_list_provider.dart';

class CustomerListView extends CustomerListConsumerWidget {
  const CustomerListView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerListView'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'CustomerList: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(CustomerListIncrementEvent()),
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
