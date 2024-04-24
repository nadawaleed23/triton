import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
class AppServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<AppServices> init () async{
    FirebaseMessaging.instance.getToken().then((value) => print(value));
    sharedPreferences= await SharedPreferences.getInstance();
    return this;
  }
}
 initialServices () async{
  await Get.putAsync(() => AppServices().init());
 }