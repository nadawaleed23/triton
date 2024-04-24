import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:triton/controller/auth/loginController.dart';
import 'package:triton/core/class/handlingDataView.dart';
import 'package:triton/core/constant/color.dart';
import 'package:triton/core/functions/validInput.dart';
import 'package:triton/view/widget/customSquare.dart';
import 'package:triton/view/widget/customVector1.dart';
import 'package:triton/view/widget/custom_button.dart';

import '../../widget/customCurve.dart';
import '../../widget/customTextForm.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(LoginImp());
    return Scaffold(
      body: GetBuilder<LoginImp>(
        builder:(controller) =>HandlingDataRequest(statusRequest:controller.statusRequest ,
        widget:SingleChildScrollView(
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
              const Gap(10),


              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 500,
                  child: Expanded(
                    flex: 2,
                    child: Form(key: controller.formState,
                      child: ListView(shrinkWrap: true, children: [
                        CustonTextFormAuth(
                          valid: (val){return validInput(val!, 5, 50, "email");},

                          textInputType: TextInputType.emailAddress,
                          mycontroller: controller.email,
                          hinttext: "Enter Your Email",
                          iconData: Icons.email_outlined,
                          labeltext: "Email",

                        ),
                        CustonTextFormAuth(
                          valid: (val){return validInput(val!, 5, 20, "password");},
                          obscureText: controller.isshowpassword,
                          textInputType: TextInputType.visiblePassword,
                          mycontroller: controller.password,
                          hinttext: "Enter Your Password",
                          onTapIcon:(){ controller.showPassword();},
                          iconData: controller.isshowpassword
                              ? Icons.visibility
                              : Icons.visibility_off,

                          labeltext: "Password",

                        ),

                        Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(child: Row(mainAxisAlignment: MainAxisAlignment.start
                              ,children: [
                              Checkbox(value:controller.checked, onChanged:controller.Checked()),
                              //Gap(20),
                              const Text(
                                "Remember Me",

                                style: TextStyle(fontSize: 11),
                              ),

                            ],
                            ),
                            ),
                         //   Gap(60),
                            InkWell(onTap: (){controller.goToForget();},
                              child: const Text(
                                "Forget Password?",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        customButton(
                            text: "Log In",
                            textColor: AppColors.white,
                            btnColor: AppColors.blue,
                            height: 50,
                            width: 200,
                            radius: 10,
                            onPressed: () {
                              controller.login();
                            }),
                        Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account ? ", style: TextStyle(fontSize: 12),),
                            Gap(20),
                            InkWell(onTap: (){
                              controller.goToSignup();
                            },
                              child: Text("Sign Up",
                                  style: TextStyle(
                                      color: AppColors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
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
        ), ),

      ),
    );
  }
}
