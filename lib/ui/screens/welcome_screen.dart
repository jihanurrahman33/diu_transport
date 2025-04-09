import 'package:diu_transport/ui/screens/login_screen.dart';
import 'package:diu_transport/ui/utils/app_string.dart';
import 'package:diu_transport/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Image.asset(AssetsPath.welcomeScreenBannerPath),
          SizedBox(
            height: 20,
          ),
          Image.asset(AssetsPath.logoPath),
          Text(
           AppString.appName,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              textAlign: TextAlign.center,
              AppString.welcomeScreenText,
              style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
              onPressed:(){
                _onTapGetStarted(context);
              },
              label: Text(AppString.buttonText),
              iconAlignment: IconAlignment.end,
              icon: Icon(Icons.arrow_forward_ios_outlined))
        ],
      ),
    );
  }
}

void _onTapGetStarted(BuildContext context){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
}
