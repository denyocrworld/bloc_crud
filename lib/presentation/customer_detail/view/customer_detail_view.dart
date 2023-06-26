import 'package:flutter/material.dart';
import '../event/customer_detail_event.dart';
import '../provider/customer_detail_provider.dart';

class CustomerDetailView extends CustomerDetailConsumerWidget {
  const CustomerDetailView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerDetailView'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'CustomerDetail: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(CustomerDetailIncrementEvent()),
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
