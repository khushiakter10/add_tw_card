
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/controller/getx_controller/sign_in.dart';
import 'package:product_app/view/common_widget/common_%20loading_button.dart';
import 'package:product_app/view/common_widget/common_button.dart';
import 'package:product_app/view/screen/auth/widget/email_text_field.dart';
import 'package:product_app/view/screen/auth/widget/password_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: signInController.formkey,
              child: Column(
                children: [
                  buildSizeBox(height: 200),
                  EmailTextField(
                    mailController: signInController.emailController,
                  ),
                  buildSizeBox(height: 10),
                  PasswordTextField(
                    passwordController: signInController.passwordController,
                  ),
                  buildSizeBox(height: 10),
                  Obx(()=>signInController.isLoading.isFalse?  CommonButton(
                    buttonName: "Sign In",
                    textColor: Colors.white,
                    onTap: () {
                      if (!signInController.formkey.currentState!.validate()) {
                        return;
                      }
                      signInController.signInFun();
                    },
                  ) :  const CommonLoadingButton() ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizeBox({double? height, double? width}) => SizedBox(
    height: height,
    width: width,
  );
}
