abstract class ProductListEvent {}

class ProductListIncrementEvent extends ProductListEvent {}

class ProductListLoadEvent extends ProductListEvent {}

class ProductListLoadingEvent extends ProductListEvent {}

class ProductListLoadingCompleteEvent extends ProductListEvent {}

class ProductListDeleteEvent extends ProductListEvent {
  final int id;
  ProductListDeleteEvent({
    required this.id,
  });
}
