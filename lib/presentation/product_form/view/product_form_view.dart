import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductFormView extends ProductFormConsumerWidget {
  final Product? item;
  ProductFormView({
    super.key,
    this.item,
  });

  @override
  beforeInitState(bloc, state) {
    state.item = item;
  }

  @override
  Widget buildView(context, bloc, state) {
    if (state.loading) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductFormView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QImagePicker(
              label: "Photo",
              validator: Validator.required,
              value: state.item?.photo,
              onChanged: (value) {
                state.photo = value;
              },
            ),
            QTextField(
              label: "Product name",
              validator: Validator.required,
              value: state.item?.productName,
              onChanged: (value) {
                state.productName = value;
              },
            ),
            QNumberField(
              label: "Price",
              validator: Validator.required,
              value: state.item?.price?.toString(),
              onChanged: (value) {
                state.price = double.tryParse(value) ?? 0;
              },
            ),
            QMemoField(
              label: "Description",
              validator: Validator.required,
              value: state.item?.description,
              onChanged: (value) {
                state.description = value;
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          onPressed: () => bloc.add(ProductFormButtonSaveEvent()),
          child: Text("Save"),
        ),
      ),
    );
  }
}
