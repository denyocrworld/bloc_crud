import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/customer_list_bloc.dart';
import '../state/customer_list_state.dart';

class CustomerListProvider extends StatelessWidget {
  final Widget Function(BuildContext, CustomerListBloc, CustomerListState)
      builder;
  final Function(
    CustomerListBloc bloc,
    CustomerListState state,
  )? beforeInitState;
  const CustomerListProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = CustomerListBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<CustomerListBloc, CustomerListState>(
        builder: (context, state) {
          final bloc = context.read<CustomerListBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class CustomerListConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    CustomerListBloc bloc,
    CustomerListState state,
  );

  beforeInitState(
    CustomerListBloc bloc,
    CustomerListState state,
  );
}

class CustomerListConsumerWidget extends StatelessWidget
    implements CustomerListConsumerWidgetInterface {
  const CustomerListConsumerWidget({super.key});

  @override
  Widget buildView(
      BuildContext context, CustomerListBloc bloc, CustomerListState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return CustomerListProvider(
      builder: (context, bloc, state) {
        return buildView(context, bloc, state);
      },
    );
  }

  @override
  beforeInitState(bloc, state) {
    throw UnimplementedError();
  }
}
