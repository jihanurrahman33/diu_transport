import 'package:diu_transport/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../utils/app_string.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                AppString.registerScreenButtonText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  prefixIcon: Icon(Icons.person_2_outlined),
                  hintText: AppString.textFormFieldText1),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: AppString.textFormFieldText2),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  prefixIcon: Icon(Icons.badge_outlined),
                  hintText: AppString.textFormFieldText3),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: AppString.textFormFieldText4),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: AppString.textFormFieldText5),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    AppString.registerButtonText,
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.alreadyHaveAnAccountText,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: _onTapRegister,
                      child: Text(AppString.loginText))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _onTapRegister() {}
