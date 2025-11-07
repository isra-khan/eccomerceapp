import 'package:eccomerceapp/features/authentication/view/brand_screen/all_brand_screen.dart';
import 'package:eccomerceapp/features/authentication/view/brand_screen/model/controller/shop_provider.dart';
import 'package:eccomerceapp/features/authentication/view/brand_screen/product_brand_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandStoreScreen extends StatelessWidget {
  const BrandStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shopController = Get.put(ShopController());
    final categoryNames = shopController.categories.keys.toList();

    return DefaultTabController(
      length: categoryNames.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Store',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            onTap: (index) => shopController.setCategory(categoryNames[index]),
            tabs: categoryNames.map((c) => Tab(text: c)).toList(),
          ),
        ),
        body: Obx(() {
          final category = shopController.selectedCategory.value;
          final brands = shopController.categories[category] ?? [];

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔍 Search Bar
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 8),
                      Text(
                        "Search in Store",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 🏷️ Brands Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Brands",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AllBrandsScreen(
                            category: category,
                            brands: brands,
                          ),
                        ),
                      ),
                      child: const Text("View all"),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // 🧱 Horizontal Brand List
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: brands.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 10),
                    itemBuilder: (_, i) {
                      final brand = brands[i];
                      return InkWell(
                        onTap: () {
                          shopController.setBrand(brand);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => BrandProductsScreen(brand: brand),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image.asset(brand.logoUrl, height: 24),
                              const SizedBox(width: 6),
                              Text(
                                brand.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (brand.isVerified)
                                const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 16,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                // 🧩 Brand Cards Grid
                ListView.builder(
                  itemCount: brands.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    final brand = brands[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Brand Header
                          Row(
                            children: [
                              Image.asset(brand.logoUrl, height: 24),
                              const SizedBox(width: 8),
                              Text(
                                brand.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              if (brand.isVerified)
                                const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              const Spacer(),
                              Text(
                                "${brand.products.length} products",
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          // Product Previews
                          Row(
                            children: brand.products
                                .take(3)
                                .map(
                                  (p) => Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.asset(
                                            p.imageUrl,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
