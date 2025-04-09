import 'package:diu_transport/ui/screens/main_screen.dart';
import 'package:diu_transport/ui/screens/password_forgot_screen.dart';
import 'package:diu_transport/ui/screens/register_screen.dart';
import 'package:diu_transport/ui/utils/app_string.dart';
import 'package:diu_transport/ui/utils/assets_path.dart';
import 'package:diu_transport/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsPath.logoPath),
              Text(
                AppString.appName,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextFormField(
                      prefixIcon: Icon(Icons.badge_outlined),
                      hintText: AppString.loginFieldHintText1,
                    ),
                    SizedBox(height: 20),

                    // Password Field
                    CustomTextFormField(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintText: AppString.loginFieldHintText2,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: _onTapForgotPassword,
                          child: Text(AppString.forgotPasswordText)),
                    )
                  ],
                ),
              )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 20)),
                  onPressed: _onTapLogin,
                  child: Text(AppString.loginText)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.dontHaveAnAccountText,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: _onTapRegister,
                      child: Text(AppString.registerButtonText))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onTapLogin() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainScreen()));
  }

  void _onTapRegister() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegisterScreen()));
  }

  void _onTapForgotPassword() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return PasswordForgotScreen();
    }));
  }
}
