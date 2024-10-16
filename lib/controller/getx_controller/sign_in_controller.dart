import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_app/controller/api_controller/sign_in.dart';
import 'package:product_app/view/screen/home_page/home_page.dart';

class SignInController extends GetxController {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  signInFun() async {
    isLoading.value = true;
    bool status = await SignInService.signIn(
        mail: emailController.text, password: passwordController.text);
    isLoading.value = false;
    if (status) {
      log("Next page");
      Get.to(() => const HomePage());
    }
  }

  @override
  void onInit() {
    emailController.text;
    passwordController.text;
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
