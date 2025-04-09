import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,required this.hintText, this.prefixIcon,this.suffixIcon});

 final String hintText;
 final Widget? prefixIcon;
 final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon:prefixIcon,
        suffixIcon:suffixIcon ,
        contentPadding: EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
