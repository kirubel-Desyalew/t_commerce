import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  //variables
  final pageController = PageController();
  final RxInt currentPageIndex = 0.obs;

// update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

// jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

//update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

//update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
