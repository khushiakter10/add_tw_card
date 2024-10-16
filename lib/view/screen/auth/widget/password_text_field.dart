import 'package:flutter/material.dart';
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.passwordController,});
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  passwordController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: "Password"

      ),
      validator: (value){
        if (value == "" || value == null){
          return "Password cant be empty";
        }
        return null;
      },
    );
  }
}
