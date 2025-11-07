import 'package:eccomerceapp/common/widget/custom_product_card.dart'
    show CustomProductCard;
import 'package:eccomerceapp/features/home/home_controller.dart';
import 'package:eccomerceapp/features/home/model/product_model.dart';
import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';
import 'package:eccomerceapp/utils/help/device_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerceapp/common/widget/custom_product_card.dart';
import 'package:eccomerceapp/features/home/model/product_model.dart';
import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/constant/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: SizesConstraint.spaceBtwSections),
              _buildCarousel(),
              SizedBox(height: SizesConstraint.spaceBtwItems),
              _buildProductSectionHeader(),
              SizedBox(height: SizesConstraint.spaceBtwItems),
              _buildProductGrid(),
            ],
          ),
        ),
      ),
    );
  }

  // HEADER
  Widget _buildHeader(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.5,
            color: ColorsConstraint.primary,
            child: Padding(
              padding: EdgeInsets.all(SizesConstraint.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGreetingRow(),
                  const SizedBox(height: 15),
                  _buildPopularCategories(),
                ],
              ),
            ),
          ),
        ),
        Positioned(bottom: 2, left: 20, right: 20, child: _buildSearchBar()),
      ],
    );
  }

  Widget _buildGreetingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: ColorsConstraint.grey),
            ),
            Text(
              'Unknown Pro',
              style: Theme.of(context).textTheme.titleLarge!.apply(
                color: ColorsConstraint.white,
                fontWeightDelta: 2,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            const Icon(
              Icons.lock_outline,
              color: ColorsConstraint.white,
              size: 28,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  color: ColorsConstraint.white,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPopularCategories() {
    final categories = [
      {'icon': 'assets/icons/categories/sports.png', 'label': 'Sports'},
      {'icon': 'assets/icons/categories/furniture.png', 'label': 'Furniture'},
      {
        'icon': 'assets/icons/categories/electronics.png',
        'label': 'Electronics',
      },
      {'icon': 'assets/icons/categories/clothes.png', 'label': 'Clothes'},
      {'icon': 'assets/icons/categories/formal_shoes.png', 'label': 'Shoes'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Categories',
          style: TextStyle(
            color: ColorsConstraint.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: categories.map((category) {
            return Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: ColorsConstraint.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(category['icon']!),
                ),
                const SizedBox(height: 5),
                Text(
                  category['label']!,
                  style: TextStyle(
                    color: ColorsConstraint.white,
                    fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          filled: true,
          fillColor: ColorsConstraint.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      items: controller.banners
          .map(
            (i) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(i), fit: BoxFit.cover),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
      ),
    );
  }

  Widget _buildProductSectionHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Popular Products',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text('See All', style: TextStyle(color: Colors.blue, fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 0,
        childAspectRatio: 0.75,
      ),
      itemCount: controller.products.length,
      itemBuilder: (context, index) {
        return CustomProductCard(
          product: controller.products[index],
          onFavoriteToggle: () {
            setState(() => controller.toggleFavorite(index));
          },
        );
      },
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
