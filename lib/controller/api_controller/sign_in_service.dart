import 'dart:developer';

import 'package:get/get.dart';

class SignInService{
  static Future<bool> signIn({required String mail, required String password})async{

    try{
      await Future.delayed(const Duration(seconds: 2));
      if (mail == "khushi@gmail.com" && password == "12345678"){
        Get.snackbar("Message", "Login Success");
        return true;
      }else {
        Get.snackbar("Message", " LoginFailed..!!!!!!!!!!!!");
        return  false;
      }
    }catch (e){
      log("Error :$e");
    }
    Get.snackbar("Message", " Something  went wrong");
    return false;
  }

}