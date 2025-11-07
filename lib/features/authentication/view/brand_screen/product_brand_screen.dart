import 'package:eccomerceapp/features/authentication/view/brand_screen/model/brand_model.dart';
import 'package:flutter/material.dart';

class BrandProductsScreen extends StatelessWidget {
  final BrandModel brand;

  const BrandProductsScreen({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(brand.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: brand.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 240,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (_, i) {
            final product = brand.products[i];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(product.imageUrl, fit: BoxFit.contain),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      brand.name,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
