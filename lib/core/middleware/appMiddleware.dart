import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:triton/core/services/services.dart';


class AppMiddleware extends GetMiddleware{
  @override
  int? get priority => 1;
  AppServices appServices = Get.find() ;

  @override
  RouteSettings? redirect(String? route) {
    if(appServices.sharedPreferences.getString("onboarding") == "1"){
      return const RouteSettings(name: "login") ;
    }
  }

}