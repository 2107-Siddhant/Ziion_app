// Signup File
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool obscure = true;

  void togglePassword() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange,
          child: Column(
            children: [
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text("Create Your Account",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: (){},
                        child: Text("Skip",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            decoration: TextDecoration.underline
                          ),
                        )
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("Sign Up",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "email",
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                          hintText: "phone number",
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: obscure,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "password",
                          suffixIcon: IconButton(onPressed: togglePassword, icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, size: 18))
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        obscureText: obscure,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "confirm password",
                          suffixIcon: IconButton(onPressed: togglePassword, icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, size: 18))
                        ),
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(onPressed: (){}, child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )),
                      SizedBox(height: 10),
                      Text("or sign up with"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
