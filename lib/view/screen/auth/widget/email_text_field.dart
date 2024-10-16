import 'package:flutter/material.dart';
class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.mailController,});
  final TextEditingController mailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mailController,
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
          labelText: "Email"

      ),
      validator: (value){
        if (value == "" || value == null){
          return "Email cant be empty";
        } else if(!(value.toString().contains("") || value.toString().contains(""))){
          return "Please enter valid email";
        }
        return null;
      },
    );
  }
}
