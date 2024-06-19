
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../view/screen/enableLocation.dart';

abstract class LocCon extends GetxController{
 childPosition ();
  getCurrentLocation();


}
class LocImp extends LocCon  {
  //List latLng= [];
  double lat =0.0;
  double lng =0.0;
  @override
   childPosition() {
    DatabaseReference gpsDataRef =
    FirebaseDatabase.instance.ref('sensorsData/gpsData');
    gpsDataRef.onValue.listen((DatabaseEvent event) {

      lat = double.parse(event.snapshot.child('lat').value.toString());
     lng = double.parse(event.snapshot.child('lng').value.toString());

      update();
      print(lat);
      print(lng);

    });
    //print(data);
     return [lat,lng];
  }


   @override
  getCurrentLocation() async{
     childPosition();
     bool serviceEnabled;
     LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
   if (!serviceEnabled) {

     return Future.error('Location services are disabled.');
   }
   permission = await Geolocator.checkPermission();
   if (permission == LocationPermission.denied) {
     permission = await Geolocator.requestPermission();
     if (permission == LocationPermission.denied) {

       return Future.error('Location permissions are denied');
     }
   }

  Position position= await Geolocator.getCurrentPosition();
  /* print(position.longitude);
   print(position.latitude);*/
     double distanceInMeters = Geolocator.distanceBetween(position.latitude, position.longitude, lat, lng)/1000;
    // print(distanceInMeters);
     if(distanceInMeters>3){
     DatabaseReference distanceRef =
     FirebaseDatabase.instance.ref('sensorsData');
     distanceRef.update({'distance':distanceInMeters});
     DatabaseReference relayRef =
     FirebaseDatabase.instance.ref('sensorsData');
     relayRef.update({'relayControl':true});
     }
     //FirebaseMessaging.instance.getToken().then((value) => print(value));

     //Get.toNamed( "/home");
   }







  @override
  void onInit() {
    childPosition ();

    getCurrentLocation();
    super.onInit();
  }



}