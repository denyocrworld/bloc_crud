import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/product_form_bloc.dart';
import '../state/product_form_state.dart';

class ProductFormProvider extends StatelessWidget {
  final Function(
    ProductFormBloc bloc,
    ProductFormState state,
  )? beforeInitState;
  final Widget Function(BuildContext, ProductFormBloc, ProductFormState)
      builder;
  const ProductFormProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = ProductFormBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<ProductFormBloc, ProductFormState>(
        builder: (context, state) {
          final bloc = context.read<ProductFormBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class ProductFormConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    ProductFormBloc bloc,
    ProductFormState state,
  );

  beforeInitState(
    ProductFormBloc bloc,
    ProductFormState state,
  );
}

class ProductFormConsumerWidget extends StatelessWidget
    implements ProductFormConsumerWidgetInterface {
  ProductFormConsumerWidget({super.key});

  @override
  Widget buildView(
      BuildContext context, ProductFormBloc bloc, ProductFormState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return ProductFormProvider(
      beforeInitState: beforeInitState,
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
