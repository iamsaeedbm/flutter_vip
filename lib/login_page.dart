import 'package:flutter/material.dart';
import 'package:vip_app/appbar_theme.dart';
import 'package:vip_app/welcome_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBartheme('Login Page'),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                child: Text('back to welcome page'),
              ),
              Text('login page')
            ],
          ),
        ),
      ),
    );
  }
}
