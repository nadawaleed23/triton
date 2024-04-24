import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPassCon extends GetxController{
  forgetPass();
  goToReset(){}
}
class ForgetPassImp extends ForgetPassCon{
  GlobalKey<FormState> formState= GlobalKey<FormState>();
  late TextEditingController email;

  @override
  forgetPass() {


  }
  @override
  goToReset() {
    var formData= formState.currentState;
    /*if(formData!.validate()){
      Get.offAllNamed("/reset");
    }else{
      print("not valid");
    }*/
    Get.offAllNamed("/reset");
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

}