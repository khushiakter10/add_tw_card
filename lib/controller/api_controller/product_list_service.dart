
import 'dart:convert';
import 'dart:developer';
import 'package:product_app/database/product_list.dart';
import 'package:product_app/model/product_list_model.dart';

class ProductListService {
  static List<Productlist>? getData() {
    log("Fetching product list...");

    try {
      var response = ProductModel.fromJson(jsonDecode(jsonEncode(Product.productlist)));
      log("Response: $response");
      var data = response.productlist ?? [];

      log("Number of products: ${data.length}");

      return data;
    } catch (e) {
      log("Error fetching product list: $e");
    }
    return [];
  }
}
