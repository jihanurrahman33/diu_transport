import 'package:diu_transport/ui/screens/otp_screen.dart';
import 'package:diu_transport/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordForgotScreen extends StatefulWidget {
  const PasswordForgotScreen({super.key});

  @override
  State<PasswordForgotScreen> createState() => _PasswordForgotScreenState();
}

class _PasswordForgotScreenState extends State<PasswordForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Password Forgot',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
            ),
            Text(
              'Please enter your email to reset the password',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Email',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextFormField(hintText: 'Enter your email'),
            SizedBox(
              height: 60,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white),
                  onPressed: _onTapResetButton,
                  child: Text('Reset Password')),
            )
          ],
        ),
      ),
    );
  }

  void _onTapResetButton(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtpScreen()));
  }
}
