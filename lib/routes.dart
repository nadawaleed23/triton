import 'package:flutter/material.dart';
import 'package:triton/core/middleware/appMiddleware.dart';
import 'package:triton/view/screen/auth/forgetPassword.dart';
import 'package:triton/view/screen/auth/login.dart';
import 'package:triton/view/screen/auth/resetpass.dart';
import 'package:triton/view/screen/auth/signup.dart';
import 'package:triton/view/screen/enableLocation.dart';
import 'package:triton/view/screen/home.dart';
import 'package:triton/view/screen/onboardind.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const OnBoarding() , middlewares: [
    AppMiddleware()
  ]),

  GetPage(name: "/login", page: () => const Login()),
  GetPage(name: "/signup", page: () => const SignUp()),
  GetPage(name: "/forgetpassword", page: () => const ForgetPassword()),
  GetPage(name: "/reset", page: () => const ResetPassword()),
  GetPage(name: "/location" , page: () => const EnableLocation()),
  GetPage(name: "/home" , page: () =>  Home()),

];
