import 'package:dio/dio.dart';
import 'package:hyper_ui/model/product/product.dart';

class ProductService {
  Future<List<Product>> getProducts() async {
    var response = await Dio().get(
      "https://capekngoding.com/bloc/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List<Product> items =
        (obj["data"] as List).map((item) => Product.fromJson(item)).toList();

    return items;
  }

  Future add(Product item) async {
    await Dio().post(
      "https://capekngoding.com/bloc/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "photo": item.photo,
        "product_name": item.productName,
        "price": item.price,
        "description": item.description,
      },
    );
  }

  Future update({
    required int id,
    required Product item,
  }) async {
    await Dio().post(
      "https://capekngoding.com/bloc/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "photo": item.photo,
        "product_name": item.productName,
        "price": item.price,
        "description": item.description,
      },
    );
  }

  Future delete(int id) async {
    await Dio().delete(
      "https://capekngoding.com/bloc/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
