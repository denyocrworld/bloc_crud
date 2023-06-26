import 'package:hyper_ui/core.dart';
part 'product_form_state.freezed.dart';

@unfreezed
class ProductFormState with _$ProductFormState {
  factory ProductFormState({
    @Default("") String photo,
    @Default("") String productName,
    @Default(0) double price,
    @Default("") String description,
    @Default(false) bool loading,
    Product? item,
  }) = _ProductFormState;
}
