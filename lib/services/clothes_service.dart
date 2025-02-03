import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:session3/models/clothes_model.dart';

class ProductApi {
  final Dio dio;
  ProductApi(this.dio);

  Future<List<ProductItem>> getProducts() async {
    try {
      Response response = await dio.get('https://fakestoreapi.com/products');

      List<ProductItem> products = (response.data as List).map((item) => ProductItem.fromJson(item)).toList();
      return products;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops, there was an error. Try later.';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops, there was an error. Try later.');
    }
  }
}
