import 'package:firebase_database/firebase_database.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class FireCon extends GetxController{

  void readData();
}
class FireImp extends FireCon{

  String data='';
  String? sensor;

  final DatabaseReference databaseReference = FirebaseDatabase.instance.ref('sensorsData');
  @override
  void readData (){
    databaseReference.onValue.listen((DatabaseEvent event) {
   data = event.snapshot.value.toString();
      update();

    });

        }


  @override
  void onInit() {
    readData();
    super.onInit();
  }

}