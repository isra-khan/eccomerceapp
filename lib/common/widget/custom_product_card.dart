// widgets/product_card.dart
import 'package:eccomerceapp/features/home/model/product_model.dart';
import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback? onFavoriteToggle;

  const CustomProductCard({
    super.key,
    required this.product,
    this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsConstraint.white,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ==== IMAGE SECTION ====
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F0FE),
                        ), // soft blue background like your image),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            SizesConstraint.productImageRadius,
                          ),
                          child: Image.asset(
                            product.imageUrl,
                            height: 140,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // ==== DISCOUNT TAG ====
                      if (product.discount > 0)
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '${(product.discount * 100).toStringAsFixed(0)}%',
                              style: Theme.of(context).textTheme.labelMedium!,
                            ),
                          ),
                        ),

                      // ==== FAVORITE ICON ====
                      Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
                          onTap: onFavoriteToggle,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              product.isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: product.isFavorite
                                  ? Colors.red
                                  : Colors.black54,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ==== PRODUCT INFO ====
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            product.brand,
                            style: Theme.of(context).textTheme.labelMedium!,
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: 14,
                          ),
                        ],
                      ),

                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: onFavoriteToggle,

                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: ColorsConstraint.black,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        0,
                      ), // 👈 different radius for bottom-left
                      bottomRight: Radius.circular(
                        20,
                      ), // 👈 smaller radius for bottom-right
                      topLeft: Radius.circular(10), // 👈 flat corner
                      topRight: Radius.circular(0), // 👈 flat corner
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: ColorsConstraint.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
