import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingData.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginCon extends GetxController{
  login();
  goToSignup(){}
  goToForget(){}
}
class LoginImp extends LoginCon{
  GlobalKey<FormState> formState= GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  bool checked = false;
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find()) ;
  List data = [];
   Checked(){
    checked = checked == true ? false : true;

    update();
  }
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  @override
  login() async{
var formData= formState.currentState;
if(formData!.validate()){
  statusRequest = StatusRequest.loading;
  var response = await loginData.postdata(
        email.text,password.text,);
  print("=============================== Controller $response ");
  statusRequest = handlingData(response);
  if (StatusRequest.success == statusRequest) {
    if (response['status'] == "success") {
      // data.addAll(response['data']);
      Get.offAllNamed("/location");
    } else {
      Get.defaultDialog(title: "ُWarning" , middleText: "Email Or Password Not Correct") ;
      statusRequest = StatusRequest.failure;
    }
  }
  update();
} else {}



  }
  @override
  goToSignup() {
   Get.toNamed("/signup");
  }
  @override
  goToForget() {
    Get.toNamed("/forgetpassword");
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

}