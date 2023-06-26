import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/customer_detail_bloc.dart';
import '../state/customer_detail_state.dart';

class CustomerDetailProvider extends StatelessWidget {
  final Widget Function(BuildContext, CustomerDetailBloc, CustomerDetailState)
      builder;
  final Function(
    CustomerDetailBloc bloc,
    CustomerDetailState state,
  )? beforeInitState;
  const CustomerDetailProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = CustomerDetailBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<CustomerDetailBloc, CustomerDetailState>(
        builder: (context, state) {
          final bloc = context.read<CustomerDetailBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class CustomerDetailConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    CustomerDetailBloc bloc,
    CustomerDetailState state,
  );

  beforeInitState(
    CustomerDetailBloc bloc,
    CustomerDetailState state,
  );
}

class CustomerDetailConsumerWidget extends StatelessWidget
    implements CustomerDetailConsumerWidgetInterface {
  const CustomerDetailConsumerWidget({super.key});

  @override
  Widget buildView(BuildContext context, CustomerDetailBloc bloc,
      CustomerDetailState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return CustomerDetailProvider(
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
