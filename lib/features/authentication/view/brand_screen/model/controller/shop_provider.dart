import 'package:eccomerceapp/features/authentication/view/brand_screen/model/brand_model.dart';
import 'package:eccomerceapp/features/authentication/view/brand_screen/model/category_model.dart';
import 'package:eccomerceapp/features/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  // Observables
  var selectedCategory = "Sports".obs;
  var selectedBrand = Rxn<BrandModel>();
  var filter = "All".obs;

  // Categories, Brands & Products
  final categories = <String, List<BrandModel>>{}.obs;

  @override
  void onInit() {
    super.onInit();
    _loadSampleData();
  }

  // --- Load Sample Data ---
  void _loadSampleData() {
    categories.value = {
      "Sports": [
        BrandModel(
          name: "Nike",
          logoUrl: "assets/products/product 13.png",
          isVerified: true,
          products: [
            ProductModel(
              name: "Air Zoom Pegasus",
              brand: "Nike",
              imageUrl: "assets/products/product 13.png",
              price: 120,
              discount: 0.2,
            ),
            ProductModel(
              name: "React Infinity",
              brand: "Nike",
              imageUrl: "assets/products/product 13.png",
              price: 140,
            ),
            ProductModel(
              name: "Metcon 9",
              brand: "Nike",
              imageUrl: "assets/products/product 13.png",
              price: 160,
            ),
          ],
        ),
        BrandModel(
          name: "Adidas",
          logoUrl: "assets/products/product 13.png",
          isVerified: true,
          products: [
            ProductModel(
              name: "Ultraboost 23",
              brand: "Adidas",
              imageUrl: "assets/products/product 13.png",
              price: 150,
            ),
            ProductModel(
              name: "Supernova Rise",
              brand: "Adidas",
              imageUrl: "assets/products/product 13.png",
              price: 130,
            ),
            ProductModel(
              name: "Samba OG",
              brand: "Adidas",
              imageUrl: "assets/products/product 13.png",
              price: 110,
            ),
          ],
        ),
      ],

      "Electronics": [
        BrandModel(
          name: "Apple",
          logoUrl: "assets/logos/apple.png",
          isVerified: true,
          products: [
            ProductModel(
              name: "iPhone 15 Pro",
              brand: "Apple",
              imageUrl: "assets/products/product 13.png",
              price: 999,
            ),
            ProductModel(
              name: "MacBook Air M3",
              brand: "Apple",
              imageUrl: "assets/products/product 13.png",
              price: 1499,
            ),
            ProductModel(
              name: "AirPods Pro",
              brand: "Apple",
              imageUrl: "assets/products/product 13.png",
              price: 249,
            ),
          ],
        ),
        BrandModel(
          name: "Samsung",
          logoUrl: "assets/products/product 13.png",
          isVerified: true,
          products: [
            ProductModel(
              name: "Galaxy S24",
              brand: "Samsung",
              imageUrl: "assets/products/product 13.png",
              price: 899,
            ),
            ProductModel(
              name: "Galaxy Buds 3",
              brand: "Samsung",
              imageUrl: "assets/products/product 13.png",
              price: 199,
            ),
            ProductModel(
              name: "Galaxy Watch 6",
              brand: "Samsung",
              imageUrl: "assets/products/product 13.png",
              price: 349,
            ),
          ],
        ),
      ],

      "Fashion": [
        BrandModel(
          name: "Zara",
          logoUrl: "assets/products/product 13.png",
          isVerified: false,
          products: [
            ProductModel(
              name: "Cotton Shirt",
              brand: "Zara",
              imageUrl: "assets/products/product 13.png",
              price: 49,
            ),
            ProductModel(
              name: "Jeans",
              brand: "Zara",
              imageUrl: "assets/products/product 13.png",
              price: 69,
            ),
            ProductModel(
              name: "Jacket",
              brand: "Zara",
              imageUrl: "assets/products/product 13.png",
              price: 129,
            ),
          ],
        ),
      ],

      "Home Appliances": [
        BrandModel(
          name: "Dyson",
          logoUrl: "assets/logos/dyson.png",
          isVerified: true,
          products: [
            ProductModel(
              name: "V15 Vacuum",
              brand: "Dyson",
              imageUrl: "assets/products/product 13.png",
              price: 799,
            ),
            ProductModel(
              name: "Airwrap",
              brand: "Dyson",
              imageUrl: "assets/products/product 13.png",
              price: 599,
            ),
            ProductModel(
              name: "Purifier Cool",
              brand: "Dyson",
              imageUrl: "assets/products/product 13.png",
              price: 649,
            ),
          ],
        ),
      ],
    };
  }

  // --- Computed Getters ---
  List<BrandModel> get brandsForSelectedCategory =>
      categories[selectedCategory.value] ?? [];

  List<ProductModel> get productsForSelectedBrand {
    if (selectedBrand.value == null) return [];
    List<ProductModel> products = [...selectedBrand.value!.products];

    switch (filter.value) {
      case "Price: Low to High":
        products.sort((a, b) => a.price.compareTo(b.price));
        break;
      case "Price: High to Low":
        products.sort((a, b) => b.price.compareTo(a.price));
        break;
    }
    return products;
  }

  // --- Actions ---
  void setCategory(String category) {
    selectedCategory.value = category;
  }

  void setBrand(BrandModel brand) {
    selectedBrand.value = brand;
  }

  void setFilter(String newFilter) {
    filter.value = newFilter;
  }
}
