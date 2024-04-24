
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../view/screen/enableLocation.dart';

abstract class HomeCon extends GetxController{
  childData ();



}
class HomeImp extends HomeCon  {
  //List latLng= [];
  String heartRate ="";
  String spo2 ="";
  @override
  childData() {
    DatabaseReference healthDataRef =
    FirebaseDatabase.instance.ref('sensorsData/healthData');
    healthDataRef.onValue.listen((DatabaseEvent event) {

     heartRate =event.snapshot.child('heartRate').value.toString();
      spo2 = event.snapshot.child('spo2').value.toString();

      update();
      print(heartRate);
      print(spo2);

    });
    //print(data);
    return [heartRate,spo2];
  }










  @override
  void onInit() {
    childData ();


    super.onInit();
  }



}