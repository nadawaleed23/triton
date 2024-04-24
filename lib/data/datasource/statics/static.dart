import 'package:triton/core/constant/color.dart';
import 'package:triton/core/constant/imagesassets.dart';
import 'package:triton/view/widget/custom_button.dart';

import '../../model/onboardingmodel.dart';

List<OnBoardingModel> onboardingList = [
  OnBoardingModel(
      title: "Say Hi To Triton",
      body:
          "Welcome to your App ,Triton helps you \n have a happy and secure vacation with \n your family.",
      image: AppImageAsset.onBoardingOne),
  OnBoardingModel(
      title: "Monitoring your vital \n Signs and your Location",
      body:
          "Triton provides measurements for you \n including heart rate and SpO2 percentage \n and also tracking your Location.",
      image: AppImageAsset.onBoardingTwo),
  OnBoardingModel(
      title: "Wishing you a refreshing , \n joyful and secure swim.",
      body: "Scan Now",
     // button: customButton(  text: "Get Started", textColor: AppColors.white, btnColor:AppColors.blue, height: 100, width:200, radius: 10),
      image: AppImageAsset.onBoardingThree),
];
