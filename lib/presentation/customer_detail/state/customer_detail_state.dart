import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_detail_state.freezed.dart';

@unfreezed
class CustomerDetailState with _$CustomerDetailState {
  factory CustomerDetailState({
    @Default(0) int counter,
  }) = _CustomerDetailState;
}
