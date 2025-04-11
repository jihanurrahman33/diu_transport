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
    final Size screenSize = MediaQuery.of(context).size;
    final double horizontalPadding = screenSize.width * 0.08;
    final double logoHeight = screenSize.height * 0.2;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.05),
                SizedBox(
                  height: logoHeight,
                  child: Image.asset(AssetsPath.logoPath),
                ),
                SizedBox(height: 10),
                Text(
                  AppString.appName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: screenSize.height * 0.04),
                Form(
                  child: Column(
                    children: [
                      CustomTextFormField(
                        prefixIcon: Icon(Icons.badge_outlined),
                        hintText: AppString.loginFieldHintText1,
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      CustomTextFormField(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: AppString.loginFieldHintText2,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: _onTapForgotPassword,
                          child: Text(AppString.forgotPasswordText),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: 18),
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: _onTapLogin,
                    child: Text(AppString.loginText),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppString.dontHaveAnAccountText,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: _onTapRegister,
                      child: Text(
                        AppString.registerButtonText,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLogin() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  void _onTapRegister() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  void _onTapForgotPassword() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PasswordForgotScreen()),
    );
  }
}
