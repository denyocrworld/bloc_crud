import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/tiktok_user_list_event.dart';
import '../state/tiktok_user_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class TiktokUserListBloc extends Bloc<TiktokUserListEvent, TiktokUserListState>
    with _BlocLifecycle {
  TiktokUserListBloc() : super(TiktokUserListState()) {
    on<TiktokUserListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
