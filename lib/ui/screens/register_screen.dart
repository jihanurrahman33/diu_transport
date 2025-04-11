import 'package:flutter/material.dart';
import 'package:diu_transport/ui/widgets/custom_text_form_field.dart';
import '../utils/app_string.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.05;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppString.registerScreenButtonText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontSize: size.width * 0.07,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),

              // Name
              CustomTextFormField(
                prefixIcon: const Icon(Icons.person_2_outlined),
                hintText: AppString.textFormFieldText1,
              ),
              const SizedBox(height: 16),

              // Email
              CustomTextFormField(
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: AppString.textFormFieldText2,
              ),
              const SizedBox(height: 16),

              // Student ID
              CustomTextFormField(
                prefixIcon: const Icon(Icons.badge_outlined),
                hintText: AppString.textFormFieldText3,
              ),
              const SizedBox(height: 16),

              // Password
              CustomTextFormField(
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                hintText: AppString.textFormFieldText4,
              ),
              const SizedBox(height: 16),

              // Confirm Password
              CustomTextFormField(
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                hintText: AppString.textFormFieldText5,
              ),
              const SizedBox(height: 24),

              // Register Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    AppString.registerButtonText,
                    style: TextStyle(fontSize: size.width * 0.045),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.alreadyHaveAnAccountText,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: _onTapLogin,
                    child: Text(AppString.loginText),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapLogin() {
    Navigator.pop(context);
  }
}

