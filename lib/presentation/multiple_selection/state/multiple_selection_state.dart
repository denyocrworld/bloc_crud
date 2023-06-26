import 'package:freezed_annotation/freezed_annotation.dart';
part 'multiple_selection_state.freezed.dart';

@unfreezed
class MultipleSelectionState with _$MultipleSelectionState {
  factory MultipleSelectionState({
    @Default(0) int counter,
    @Default(["Main Course", "Drink", "Snack", "Ice Cream"])
    List<String> categories,
    @Default([]) List<int> selectedIndexLists,
  }) = _MultipleSelectionState;
}
