import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPassCon extends GetxController{
  resetPass();
  goToLogin(){}
}
class ResetPassImp extends ResetPassCon{
  GlobalKey<FormState> formState= GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController confirmPassword;
  bool isshowpassword = true;
  bool isconfirmpassword = true;
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  isConfirmPassword() {
    isconfirmpassword = isconfirmpassword == true ? false : true;
    update();
  }

  @override
  resetPass() {


  }
  @override
  goToLogin() {
    var formData= formState.currentState;
    if(formData!.validate()){
      Get.offAllNamed("/login");
    }else{
      print("not valid");
    }

  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmPassword = TextEditingController();


    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();

    super.dispose();
  }}