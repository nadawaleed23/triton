import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:triton/controller/onboarding_controller.dart';

import '../../core/constant/color.dart';
import '../../data/datasource/statics/static.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingImp>(builder: (controller)=>
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onboardingList.length,
                    (index) => AnimatedContainer(
                  margin:const EdgeInsets.only(right: 10),
                  duration: const Duration(milliseconds: 600),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: controller.currentPage==index? AppColors.blue: AppColors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
            )
          ],
        ),);
  }
}
