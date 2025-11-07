import 'package:eccomerceapp/features/authentication/view/brand_screen/model/brand_model.dart';
import 'package:eccomerceapp/features/authentication/view/brand_screen/product_brand_screen.dart';
import 'package:flutter/material.dart';

class AllBrandsScreen extends StatelessWidget {
  final String category;
  final List<BrandModel> brands;

  const AllBrandsScreen({
    super.key,
    required this.category,
    required this.brands,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Brand'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 120,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: brands.length,
        itemBuilder: (context, index) {
          final brand = brands[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BrandProductsScreen(brand: brand),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(brand.logoUrl, height: 24),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        brand.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.verified, color: Colors.blue, size: 14),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${brand.products.length} products',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
