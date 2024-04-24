import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:triton/core/class/statusrequest.dart';


import '../../core/functions/handlingData.dart';
import '../../data/datasource/remote/auth/signUp.dart';





abstract class SignUpnCon extends GetxController{
  signUp();
  goToSignIn(){}
}
class SignupImp extends SignUpnCon{
  GlobalKey<FormState> formState= GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController name;
  late TextEditingController confirm;
  StatusRequest statusRequest = StatusRequest.none;
  SignupData signupData = SignupData(Get.find()) ;
  List data = [];

  bool isshowpassword = true;
  bool isconfirmpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  confirmPassword() {
    isconfirmpassword = isconfirmpassword == true ? false : true;
    update();
  }

  @override
  signUp() async {
    var formData= formState.currentState;
    if(formData!.validate()){

      statusRequest = StatusRequest.loading;
      var response = await signupData.postData(
          name.text,  email.text,password.text, confirm.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offAllNamed("/login");
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ;
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }
  @override
  goToSignIn() {
    Get.offAllNamed("/login");

  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    confirm = TextEditingController();

    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    confirm.dispose();
    name.dispose();
    super.dispose();
  }

}