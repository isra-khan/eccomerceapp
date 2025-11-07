import 'package:eccomerceapp/features/home/model/product_model.dart';

class BrandModel {
  final String name;
  final String logoUrl;
  final bool isVerified;
  final int productCount;
  final List<ProductModel> products;

  BrandModel({
    required this.name,
    required this.logoUrl,
    this.isVerified = false,
    this.productCount = 0,
    required this.products,
  });
}
