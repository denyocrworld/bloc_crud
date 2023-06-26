import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/multiple_selection_event.dart';
import '../state/multiple_selection_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class MultipleSelectionBloc
    extends Bloc<MultipleSelectionEvent, MultipleSelectionState>
    with _BlocLifecycle {
  MultipleSelectionBloc() : super(MultipleSelectionState()) {
    on<MultipleSelectionIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<MultipleSelectionAddIndexEvent>((event, emit) {
      // state.selectedIndexLists.add(event.index);
      state.selectedIndexLists = [
        ...state.selectedIndexLists,
        event.index,
      ];
      emit(state.copyWith());
    });
    on<MultipleSelectionRemoveIndexEvent>((event, emit) {
      state.selectedIndexLists.remove(event.index);
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
