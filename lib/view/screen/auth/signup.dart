import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:triton/controller/auth/signUpController.dart';
import 'package:triton/core/class/handlingDataView.dart';
import 'package:triton/core/constant/color.dart';
import 'package:triton/view/widget/customSquare.dart';
import 'package:triton/view/widget/customVector1.dart';
import 'package:triton/view/widget/custom_button.dart';
import 'package:triton/view/widget/lineBlue.dart';

import '../../../controller/auth/loginController.dart';
import '../../../core/functions/validInput.dart';
import '../../widget/customCurve.dart';
import '../../widget/customTextForm.dart';
import '../../widget/customsqure2.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(SignupImp());
    return Scaffold(
      body: GetBuilder<SignupImp>(
        builder: (controller)=> HandlingDataRequest(statusRequest: controller.statusRequest, widget: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                   alignment: Alignment.bottomLeft,
                        children: [
                          CustomPaint(
                            size: Size(20, 50),
                            painter: LineBlue(),
                          ),
                          CustomPaint(
                            size: Size(20, 20),
                            painter: LineBlue(),
                          )
                        ],
                      ),
                      CustomPaint(
                        size: Size(64, 75),
                        painter: SqureBlue(),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                        width: double.maxFinite,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              "Welcome to ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: AppColors.grey,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "TRITON",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: AppColors.blue,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ],
                        )),
                  ),
                  const Gap(20),
                ],
              ),
              Text(
                "Create your account",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.blue,
                ),
                textAlign: TextAlign.start,
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: double.maxFinite,
                  child: Expanded(
                    child: Form(
                      key: controller.formState,
                      child: ListView(shrinkWrap: true, children: [
                        CustonTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 20, "name");
                          },

                          textInputType: TextInputType.text,
                          mycontroller: controller.name,
                          hinttext: "Enter Your Name",
                          iconData: Icons.person,
                          labeltext: "Name",
                        ),
                        CustonTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 50, "email");
                          },

                          textInputType: TextInputType.emailAddress,
                          mycontroller: controller.email,
                          hinttext: "Enter Your Email",
                          iconData: Icons.email_outlined,
                          labeltext: "Email",
                        ),
                        CustonTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 20, "password");
                          },
                          obscureText: controller.isshowpassword,
                          onTapIcon:(){ controller.showPassword();},
                          textInputType: TextInputType.visiblePassword,
                          mycontroller: controller.password,
                          hinttext: "Enter Your Password",
                          iconData: controller.isshowpassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          labeltext: "Password",
                          // mycontroller: ,
                        ),
                        CustonTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 20, "confirmPassword");
                          },
                          obscureText: controller.isshowpassword,
                          onTapIcon: (){controller.showPassword();},
                          textInputType: TextInputType.visiblePassword,
                          mycontroller: controller.confirm,
                          hinttext: "Confirm Password",
                          iconData: controller.isshowpassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          labeltext: "ConfirmPassword",
                        ),
                        const Gap(20),
                        customButton(
                            text: "Sign Up",
                            textColor: AppColors.white,
                            btnColor: AppColors.blue,
                            height: 50,
                            width: 200,
                            radius: 10,
                            onPressed: () {
                              controller.signUp();
                            }),
                        Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account ? ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.grey,
                                )),
                            InkWell(
                              onTap: () {
                                controller.goToSignIn();
                              },
                              child: Text("Sign In",
                                  style: TextStyle(
                                    fontSize: 12,
                                      color: AppColors.blue,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),),
      )
    );
  }
}
