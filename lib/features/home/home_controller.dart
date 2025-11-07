import 'package:eccomerceapp/features/home/model/product_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Banners
  final List<String> banners = [
    'assets/banners/banner_1.jpg',
    'assets/banners/banner_2.jpg',
    'assets/banners/banner_3.jpg',
  ];

  // Product list
  List<ProductModel> products = [
    ProductModel(
      name: 'Shoes of Nike',
      brand: 'Nike',
      imageUrl: 'assets/products/product 13.png',
      price: 79.99,
      discount: 0.49,
    ),
    ProductModel(
      name: 'Adidas Runner',
      brand: 'Adidas',
      imageUrl: 'assets/products/product 13.png',
      price: 89.99,
      discount: 0.25,
    ),
    ProductModel(
      name: 'Puma Sports Shoes',
      brand: 'Puma',
      imageUrl: 'assets/products/product 13.png',
      price: 69.99,
      discount: 0.15,
    ),
    ProductModel(
      name: 'Reebok Trainers',
      brand: 'Reebok',
      imageUrl: 'assets/products/product 13.png',
      price: 74.50,
      discount: 0.35,
    ),
    ProductModel(
      name: 'Reebok Trainers',
      brand: 'Reebok',
      imageUrl: 'assets/products/product 13.png',
      price: 74.50,
      discount: 0.35,
    ),
    ProductModel(
      name: 'Reebok Trainers',
      brand: 'Reebok',
      imageUrl: 'assets/products/product 13.png',
      price: 74.50,
      discount: 0.35,
    ),
  ];

  /// Toggle favorite status for a product
  void toggleFavorite(int index) {
    products[index] = ProductModel(
      name: products[index].name,
      brand: products[index].brand,
      imageUrl: products[index].imageUrl,
      price: products[index].price,
      discount: products[index].discount,
      isFavorite: !products[index].isFavorite,
    );
  }
}
