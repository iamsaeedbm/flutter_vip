import 'package:flutter/material.dart';
import 'package:vip_app/appbar_theme.dart';
import 'package:vip_app/welcome_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBartheme('sign up page'),
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
              Text('sign up page')
            ],
          ),
        ),
      ),
    );
  }
}
