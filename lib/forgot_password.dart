import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                Text("Forgot Password",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Text("Please enter your email address to receive a verification code"),
            TextField(
              decoration: InputDecoration(
                hintText: "Continue via Email"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Continue via Phone"
              ),
            )
          ],
        ),
      ),
    );
  }
}
