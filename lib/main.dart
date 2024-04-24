import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:triton/bindings/intialBindings.dart';
import 'package:triton/core/localization/changeLocal.dart';
import 'package:triton/core/localization/languages.dart';
import 'package:triton/core/services/services.dart';
import 'package:triton/routes.dart';
import 'package:triton/view/screen/enableLocation.dart';
import 'package:triton/view/screen/home.dart';
import 'package:triton/view/screen/onboardind.dart';

import 'firebase_options.dart';
import 'firetest.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleCon controller = Get.put(LocaleCon());
    return GetMaterialApp(
      translations: AppLang(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.languages,
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   Home(),

     // getPages: routes,
     initialBinding: InitialBindings(),
    );
  }
}
