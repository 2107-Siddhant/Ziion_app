import 'package:flutter/material.dart';

class PasswordChangedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top illustration image
                Image.asset(
                  'assets/images/success_illustration.jpg',
                  height: 250,
                ),
                SizedBox(height: 10),

                // Success text
                Text(
                  "Password changed\nSuccessfully",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30),

                // Big tick icon
                Image.asset(
                  'assets/images/check_password.png',
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
