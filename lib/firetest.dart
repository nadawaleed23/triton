
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/testfireController.dart';

class RealTime extends StatelessWidget {
   RealTime({super.key});
  final DatabaseReference databaseReference = FirebaseDatabase.instance.ref('sensorsData');

  @override
  Widget build(BuildContext context,) {
    FireImp controller = Get.put(FireImp());
    return  Scaffold(
      body: Center(child: Text(controller.data),),
    );
  }
}
/*class Notifications extends StatefulWidget {
   Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {


  @override
  void initState() {


    super.initState();
    FirebaseMessaging.instance.getToken().then((value) => print(value));

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}*/

