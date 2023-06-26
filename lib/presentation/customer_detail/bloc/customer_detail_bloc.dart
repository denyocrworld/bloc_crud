import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/customer_detail_event.dart';
import '../state/customer_detail_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class CustomerDetailBloc extends Bloc<CustomerDetailEvent, CustomerDetailState>
    with _BlocLifecycle {
  CustomerDetailBloc() : super(CustomerDetailState()) {
    on<CustomerDetailIncrementEvent>((event, emit) {
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
