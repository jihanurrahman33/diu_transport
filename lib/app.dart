import 'package:diu_transport/ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class DiuTransport extends StatelessWidget {
  const DiuTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff417048)
        ),

          inputDecorationTheme: InputDecorationTheme(
            hintStyle:
                TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            fillColor: Colors.white,
            filled: true,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  fixedSize:
                      Size(MediaQuery.of(context).size.width * 0.8, 50))),
          textTheme: TextTheme(
              bodyLarge: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              bodyMedium: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Color(0xff417048)),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
