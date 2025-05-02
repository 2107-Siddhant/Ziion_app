import 'package:flutter/material.dart';
import 'package:ziion_app/forgot_password.dart';
import 'package:ziion_app/initial.dart';
import 'package:ziion_app/login.dart';
import 'package:ziion_app/signup.dart';
import 'package:ziion_app/splash.dart';
import 'package:ziion_app/verify_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            fixedSize: Size(300, 50),
            padding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            elevation: 6
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: Colors.grey,
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(26), borderSide: BorderSide.none)
        )
      ),
      initialRoute: 'initial',
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'login': (context) => const Login(),
        'signup' : (context) => const Signup(),
        'forgot_password': (context) => ForgotPassword(),
        'verify_password': (context) => VerifyPassword(),
        'initial': (context) => Initial()
      },
    );
  }
}
