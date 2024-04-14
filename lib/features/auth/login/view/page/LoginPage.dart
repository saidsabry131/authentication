import 'package:auth_test/features/auth/login/view/components/LoginComponent.dart';
//import 'package:auth_test/features/auth/registration/view/components/bottom_buttons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign in"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [LoginComponent(), buttons()],
      ),
    );
  }
}
