import 'package:flutter/material.dart';
import '../event/customer_form_event.dart';
import '../provider/customer_form_provider.dart';

class CustomerFormView extends CustomerFormConsumerWidget {
  const CustomerFormView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerFormView'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'CustomerForm: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(CustomerFormIncrementEvent()),
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
