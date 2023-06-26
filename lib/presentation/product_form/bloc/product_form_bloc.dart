import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';

mixin _BlocLifecycle {
  void beforeInitState() {}
  void initState() {}
  void dispose() {}
}

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState>
    with _BlocLifecycle {
  ProductFormBloc() : super(ProductFormState()) {
    on<ProductFormIncrementEvent>((event, emit) {
      emit(state.copyWith());
    });

    on<ProductFormButtonSaveEvent>((event, emit) async {
      add(ProductFormLoadingEvent());

      if (isEditMode) {
        await ProductService().update(
          id: state.item!.id!,
          item: Product(
            photo: state.photo,
            productName: state.productName,
            price: state.price,
            description: state.description,
          ),
        );
      } else if (isCreateMode) {
        await ProductService().add(Product(
          photo: state.photo,
          productName: state.productName,
          price: state.price,
          description: state.description,
        ));
      }

      add(ProductFormLoadingCompleteEvent());
      Get.back();
    });

    on<ProductFormLoadingEvent>((event, emit) {
      state.loading = true;
      emit(state.copyWith());
    });

    on<ProductFormLoadingCompleteEvent>((event, emit) {
      state.loading = false;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    if (isEditMode) {
      state.photo = state.item!.photo!;
      state.productName = state.item!.productName!;
      state.price = state.item!.price!;
      state.description = state.item!.description!;
    }
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

  bool get isEditMode {
    return state.item != null;
  }

  bool get isCreateMode {
    return state.item == null;
  }
}
