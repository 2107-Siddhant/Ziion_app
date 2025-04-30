import 'package:flutter/material.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'login');
                },
                child: Text("Login",
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
            ),
            SizedBox(height: 60),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'signup');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[350]
                ),
                child: Text("Signup",
                  style: TextStyle(
                      color: Colors.black
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
