import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:triton/core/services/services.dart';
import '../../data/datasource/statics/static.dart';

abstract class OnBoardingCon extends GetxController{
  next();
  onPageChange(int index);
}
class OnBoardingImp extends OnBoardingCon{
  int currentPage=0;
  late PageController pageController;
  AppServices appServices= Get.find();
  @override
  onPageChange(int index) {
    currentPage= index;
    update();

  }

  @override
  next() {
    currentPage++;

    if (currentPage > onboardingList.length - 1) {
     appServices.sharedPreferences.setString("onboarding", "1") ;
      Get.offAllNamed("/login") ;
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
  
} 