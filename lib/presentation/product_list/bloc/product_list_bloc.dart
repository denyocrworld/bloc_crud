import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../service/product_service/product_service.dart';
import '../event/product_list_event.dart';
import '../state/product_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductListBloc extends Bloc<ProductListEvent, ProductListState>
    with _BlocLifecycle {
  ProductListBloc() : super(ProductListState()) {
    on<ProductListIncrementEvent>((event, emit) {
      emit(state.copyWith());
    });

    on<ProductListLoadEvent>((event, emit) async {
      add(ProductListLoadingEvent());

      var productItems = await ProductService().getProducts();
      state.items = productItems;

      add(ProductListLoadingCompleteEvent());
    });

    on<ProductListLoadingEvent>((event, emit) {
      state.loading = true;
      emit(state.copyWith());
    });

    on<ProductListLoadingCompleteEvent>((event, emit) {
      state.loading = false;
      emit(state.copyWith());
    });

    on<ProductListDeleteEvent>((event, emit) async {
      await ProductService().delete(event.id);
      add(ProductListLoadEvent());
    });
  }

  @override
  void initState() {
    //initState event
    add(ProductListLoadEvent());
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
