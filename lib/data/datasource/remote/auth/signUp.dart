import '../../../../apiLinks.dart';

import '../../../../core/class/crud.dart';


class SignupData {

  Crud crud ;

  SignupData(this.crud) ;

 postData(String username,String email,String password,String confirmPassword ) async {
   //print (email, password, confirmPassword);
    var response = await crud.postData(AppLink.signUp, {
      "username" : username ,
      "email" : email  ,
      "password" : password ,
      "confirmPassword " : confirmPassword ,
      "role_id": "1",
      "area_id": "2"
    });
    return response.fold((l) => l, (r) => r) ;
  }


}