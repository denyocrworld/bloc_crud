import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/product_list_bloc.dart';
import '../state/product_list_state.dart';

class ProductListProvider extends StatelessWidget {
  final Function(
    ProductListBloc bloc,
    ProductListState state,
  )? beforeInitState;
  final Widget Function(BuildContext, ProductListBloc, ProductListState)
      builder;
  const ProductListProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = ProductListBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
          final bloc = context.read<ProductListBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class ProductListConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    ProductListBloc bloc,
    ProductListState state,
  );

  beforeInitState(
    ProductListBloc bloc,
    ProductListState state,
  );
}

class ProductListConsumerWidget extends StatelessWidget
    implements ProductListConsumerWidgetInterface {
  const ProductListConsumerWidget({super.key});

  @override
  Widget buildView(
      BuildContext context, ProductListBloc bloc, ProductListState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return ProductListProvider(
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
