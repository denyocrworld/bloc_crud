import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/customer_list_event.dart';
import '../state/customer_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class CustomerListBloc extends Bloc<CustomerListEvent, CustomerListState>
    with _BlocLifecycle {
  CustomerListBloc() : super(CustomerListState()) {
    on<CustomerListIncrementEvent>((event, emit) {
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
