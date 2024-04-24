
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:triton/core/services/services.dart';

class LocaleCon extends GetxController{
  Locale? languages;
  AppServices appServices= Get.find();
  changeLang(String languageCode){
    Locale locale= Locale(languageCode);
    appServices.sharedPreferences.setString("lang",languageCode);
    Get.updateLocale(locale);

  }
  @override
  void onInit() {
    String? sharedLang = appServices.sharedPreferences.getString("lang");
    if (sharedLang == "ar"){
      languages = const Locale("ar")  ;
    }else if (sharedLang == "en"){
      languages = const Locale("en")  ;
    }else {
      languages = Locale(Get.deviceLocale!.languageCode) ;
    }
    super.onInit();
  }
}