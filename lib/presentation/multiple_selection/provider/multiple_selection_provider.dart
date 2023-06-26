import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/multiple_selection_bloc.dart';
import '../state/multiple_selection_state.dart';

class MultipleSelectionProvider extends StatelessWidget {
  final Widget Function(
      BuildContext, MultipleSelectionBloc, MultipleSelectionState) builder;
  final Function(
    MultipleSelectionBloc bloc,
    MultipleSelectionState state,
  )? beforeInitState;
  const MultipleSelectionProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = MultipleSelectionBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<MultipleSelectionBloc, MultipleSelectionState>(
        builder: (context, state) {
          final bloc = context.read<MultipleSelectionBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class MultipleSelectionConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    MultipleSelectionBloc bloc,
    MultipleSelectionState state,
  );

  beforeInitState(
    MultipleSelectionBloc bloc,
    MultipleSelectionState state,
  );
}

class MultipleSelectionConsumerWidget extends StatelessWidget
    implements MultipleSelectionConsumerWidgetInterface {
  const MultipleSelectionConsumerWidget({super.key});

  @override
  Widget buildView(BuildContext context, MultipleSelectionBloc bloc,
      MultipleSelectionState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return MultipleSelectionProvider(
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
