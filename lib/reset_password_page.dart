import 'package:flutter/material.dart';
import 'package:vip_app/appbar_theme.dart';
import 'package:vip_app/welcome_page.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBartheme('Reset Password'),
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
              Text('reset pass page')
            ],
          ),
        ),
      ),
    );
  }
}
