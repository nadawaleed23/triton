import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:triton/controller/onboarding_controller.dart';
import 'package:triton/view/widget/custom_button.dart';
import 'package:triton/view/widget/slider.dart';
import '../../core/constant/color.dart';
import '../../data/datasource/statics/static.dart';

class OnBoarding extends GetView<OnBoardingImp>  {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(OnBoardingImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                  controller: controller.pageController,
                onPageChanged: (val){
                      controller.onPageChange(val);
                },
                  itemCount: onboardingList.length,
                  itemBuilder: (context, i) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: SvgPicture.asset(
                                onboardingList[i].image!,
                                height: 250,
                                width: 200,
                              ),
                            ),
                            const Gap(60),
                            Container(
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              child: Text(
                                onboardingList[i].title!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Gap(15),
                            Container(
                                width: double.maxFinite,
                                alignment: Alignment.center,
                                child: Text(
                                  onboardingList[i].body!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 2,
                                      color: i == 2
                                          ? AppColors.blue
                                          : AppColors.grey,
                                      fontSize: i == 2 ? 15 : 12),
                                )),
                            const Gap(15),
                            if (i == 2)
                              customButton(
                                       onPressed: (){
                                         Get.offNamed("login");
                                       },
                                  text: "Get Started",
                                  textColor: AppColors.white,
                                  btnColor: AppColors.blue,
                                  height: 50,
                                  width: 200,
                                  radius: 10)
                          ],
                        ),
                      )),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Center(
                child: Expanded(
                    flex: 1,
                    child:CustomSlider()
                    )
              ),
            )
          ],
        ),
      ),
    );
  }
}
