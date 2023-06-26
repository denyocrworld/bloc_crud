import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/tiktok_user_list_bloc.dart';
import '../state/tiktok_user_list_state.dart';

class TiktokUserListProvider extends StatelessWidget {
  final Widget Function(BuildContext, TiktokUserListBloc, TiktokUserListState)
      builder;
  final Function(
    TiktokUserListBloc bloc,
    TiktokUserListState state,
  )? beforeInitState;
  const TiktokUserListProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = TiktokUserListBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<TiktokUserListBloc, TiktokUserListState>(
        builder: (context, state) {
          final bloc = context.read<TiktokUserListBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class TiktokUserListConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    TiktokUserListBloc bloc,
    TiktokUserListState state,
  );

  beforeInitState(
    TiktokUserListBloc bloc,
    TiktokUserListState state,
  );
}

class TiktokUserListConsumerWidget extends StatelessWidget
    implements TiktokUserListConsumerWidgetInterface {
  const TiktokUserListConsumerWidget({super.key});

  @override
  Widget buildView(BuildContext context, TiktokUserListBloc bloc,
      TiktokUserListState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return TiktokUserListProvider(
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
