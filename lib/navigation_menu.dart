import 'package:eccomerceapp/utils/constant/colors.dart';
import 'package:eccomerceapp/utils/help/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  final navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctionConstraint.isDarkMode(context);
    return Obx(
      () => Scaffold(
        body: navigationController
            .screens[navigationController.selectedIndex.value],
        backgroundColor: isDarkMode
            ? ColorsConstraint.dark
            : ColorsConstraint.light,
        bottomNavigationBar: NavigationBar(
          elevation: 0,
          indicatorColor: isDarkMode
              ? ColorsConstraint.white.withValues(alpha: 0.1)
              : ColorsConstraint.black.withValues(alpha: 0.1),
          selectedIndex: navigationController.selectedIndex.value,
          onDestinationSelected: navigationController.changeTab,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              label: 'Wishlist',
            ),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }

  List<Widget> screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Store Screen')),
    Center(child: Text('Wishlist Screen')),
    Center(child: Text('Profile Screen')),
  ];
}
