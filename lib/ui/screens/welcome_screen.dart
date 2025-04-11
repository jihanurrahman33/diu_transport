import 'package:diu_transport/ui/screens/login_screen.dart';
import 'package:diu_transport/ui/utils/app_string.dart';
import 'package:diu_transport/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.height * 0.03;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsPath.welcomeScreenBannerPath,
                  width: size.width,
                  height: size.height * 0.3,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  AssetsPath.logoPath,
                  height: size.height * 0.1,
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  AppString.appName,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  AppString.welcomeScreenText,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.04),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _onTapGetStarted(context),
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                    label: Text(AppString.buttonText),
                    iconAlignment: IconAlignment.end,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapGetStarted(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }
}
