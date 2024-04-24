import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:triton/controller/auth/loginController.dart';
import 'package:triton/core/constant/color.dart';
import 'package:triton/view/widget/customSquare.dart';
import 'package:triton/view/widget/customVector1.dart';
import 'package:triton/view/widget/custom_button.dart';

import '../../../controller/auth/forgetpassController.dart';
import '../../../core/functions/validInput.dart';
import '../../widget/customCurve.dart';
import '../../widget/customTextForm.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPassImp controller= Get.put(ForgetPassImp());
    return Scaffold(
      body:SingleChildScrollView(
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Forget Password", style: TextStyle(color: AppColors.blue),textAlign: TextAlign.start,),
                const Gap(10),

                const Text("Enter your Email for the verifications process, We will send code to your email.",),
              ],),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: SizedBox(
                height: double.maxFinite,
                child: Expanded(
                  child: ListView(shrinkWrap: true, children: [
                    CustonTextFormAuth(valid: (val){return validInput(val!, 5, 50, "email");},
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                      mycontroller: controller.email,
                      hinttext: "Enter Your Email",
                      iconData: Icons.email_outlined,
                      labeltext: "Email",

                    ),

                    Gap(60),
                    customButton(
                        text: "Send",
                        textColor: AppColors.white,
                        btnColor: AppColors.blue,
                        height: 50,
                        width: 200,
                        radius: 10,
                        onPressed: () {controller.goToReset();

                        }),

                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}