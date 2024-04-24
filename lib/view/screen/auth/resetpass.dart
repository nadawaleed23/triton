import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:triton/controller/auth/loginController.dart';
import 'package:triton/core/constant/color.dart';
import 'package:triton/view/widget/customSquare.dart';
import 'package:triton/view/widget/customVector1.dart';
import 'package:triton/view/widget/custom_button.dart';

import '../../../controller/auth/resetPass.dart';
import '../../../core/functions/validInput.dart';
import '../../widget/customCurve.dart';
import '../../widget/customTextForm.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassImp controller = Get.put(ResetPassImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              CustomPaint(
                size: Size(1000, (400 * 0.5833333333333334).toDouble()),
                painter: RPSCustomPainter(),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          CustomPaint(
                            size: Size(20, 30),
                            painter: CustomVector1(),
                          ),
                          CustomPaint(
                            size: Size(20, 20),
                            painter: CustomVector2(),
                          )
                        ],
                      ),
                      CustomPaint(
                        size: Size(64, 75),
                        painter: CustomSquare(),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                        width: double.maxFinite,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Welcome to \nTRITON",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: AppColors.white,
                          ),
                          textAlign: TextAlign.start,
                        )),
                  )
                ],
              ),
            ]),
            const Gap(40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Reset Password",
                style: TextStyle(color: AppColors.blue),
              ),
              const Gap(10),
              const Text(
                "Set the new password to your account so you, can log in and access our features ",
              ),
            ],),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: double.maxFinite,
                child: Expanded(
                  child: Form(
                    key: controller.formState,
                    child: ListView(shrinkWrap: true, children: [
                      GetBuilder<ResetPassImp>(
                        builder: (controller) => CustonTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 20, "password");
                          },
                          labeltext: "Password",
                          obscureText: controller.isshowpassword,
                          onTapIcon: (){controller.showPassword();},
                          textInputType: TextInputType.visiblePassword,
                          mycontroller: controller.password,
                          hinttext: "New Password",
                          iconData: controller.isshowpassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      GetBuilder<ResetPassImp>(
                        builder: (controller) => CustonTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 20, "confirmPassword");
                          },
                          labeltext: "ConfirmPassword",
                          obscureText: controller.isconfirmpassword,
                          onTapIcon:(){ controller.isConfirmPassword();},
                          textInputType: TextInputType.visiblePassword,
                          mycontroller: controller.confirmPassword,
                          hinttext: "Confirm Password",
                          iconData: controller.isconfirmpassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      const Gap(20),
                      customButton(
                          text: "Reset Password",
                          textColor: AppColors.white,
                          btnColor: AppColors.blue,
                          height: 50,
                          width: 200,
                          radius: 10,
                          onPressed: () {
                            controller.goToLogin();
                          }),
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
