import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/customer_form_event.dart';
import '../state/customer_form_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class CustomerFormBloc extends Bloc<CustomerFormEvent, CustomerFormState>
    with _BlocLifecycle {
  CustomerFormBloc() : super(CustomerFormState()) {
    on<CustomerFormIncrementEvent>((event, emit) {
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
