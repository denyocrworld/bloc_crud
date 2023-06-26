abstract class MultipleSelectionEvent {}

class MultipleSelectionIncrementEvent extends MultipleSelectionEvent {}

class MultipleSelectionAddIndexEvent extends MultipleSelectionEvent {
  final int index;
  MultipleSelectionAddIndexEvent({
    required this.index,
  });
}

class MultipleSelectionRemoveIndexEvent extends MultipleSelectionEvent {
  final int index;
  MultipleSelectionRemoveIndexEvent({
    required this.index,
  });
}
