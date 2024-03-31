import 'package:flutter/material.dart';
import 'package:vip_app/login_page.dart';
import 'package:vip_app/reset_password_page.dart';
import 'package:vip_app/signup_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/welcome.png'),
                width: 200.0,
                height: 200.0,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(LoginPage());
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(SignUpPage());
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  navigateToPage(ResetPasswordPage());
                },
                child: Text(
                  'Forgot password ...',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToPage(Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
