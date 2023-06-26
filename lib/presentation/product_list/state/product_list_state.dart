import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/product/product.dart';
part 'product_list_state.freezed.dart';

@unfreezed
class ProductListState with _$ProductListState {
  factory ProductListState({
    @Default(false) bool loading,
    @Default([]) List<Product> items,
  }) = _ProductListState;
}
