import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/customer_form_bloc.dart';
import '../state/customer_form_state.dart';

class CustomerFormProvider extends StatelessWidget {
  final Widget Function(BuildContext, CustomerFormBloc, CustomerFormState)
      builder;
  final Function(
    CustomerFormBloc bloc,
    CustomerFormState state,
  )? beforeInitState;
  const CustomerFormProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = CustomerFormBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<CustomerFormBloc, CustomerFormState>(
        builder: (context, state) {
          final bloc = context.read<CustomerFormBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class CustomerFormConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    CustomerFormBloc bloc,
    CustomerFormState state,
  );

  beforeInitState(
    CustomerFormBloc bloc,
    CustomerFormState state,
  );
}

class CustomerFormConsumerWidget extends StatelessWidget
    implements CustomerFormConsumerWidgetInterface {
  const CustomerFormConsumerWidget({super.key});

  @override
  Widget buildView(
      BuildContext context, CustomerFormBloc bloc, CustomerFormState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return CustomerFormProvider(
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
