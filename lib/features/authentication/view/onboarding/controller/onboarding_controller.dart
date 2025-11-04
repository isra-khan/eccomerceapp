import 'package:eccomerceapp/routes/appapges.dart';
import 'package:eccomerceapp/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = 0.obs; // Start from 0 (first page)
  final int totalPages = 3; // Change this to match your onboarding screens

  void updatePageIndicator(int index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void nextPage() {
    if (currentIndex == 2) {
      Get.offAllNamed(Routes.login);
    }
    if (currentIndex.value < totalPages - 1) {
      final nextPageIndex = currentIndex.value + 1;

      pageController.animateToPage(
        nextPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );

      currentIndex.value = nextPageIndex;
    }
  }

  void skipPage() {
    pageController.animateToPage(
      totalPages - 1,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    currentIndex.value = totalPages - 1;
  }
}
