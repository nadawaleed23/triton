import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:triton/core/constant/color.dart';
import 'package:triton/view/widget/custom_button.dart';

import '../../controller/locationController.dart';

class EnableLocation extends StatelessWidget {
  const EnableLocation({super.key});

  @override
  Widget build(BuildContext context) {
    LocImp controller= Get.put(LocImp());
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Enable Your Location",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              const Gap(40),
              SvgPicture.asset(
                "assets/svg/location.svg",
                height: 250,
                width: 200,
              ),
             const Gap(30),
              const Text("Please allow us to to access your\n location service", textAlign: TextAlign.center,),
              const Gap(30),
              customButton(text: "Enable Location", textColor: AppColors.white, btnColor: AppColors.blue, height: 50,
                  width: 200,
                  radius: 10, onPressed: (){
                controller.getCurrentLocation();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
