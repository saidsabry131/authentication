import 'package:auth_test/features/auth/login/view/page/LoginPage.dart';
import 'package:auth_test/features/auth/onboarding/view/page/onboarding.dart';
import 'package:auth_test/features/auth/registration/view/pages/regist_page.dart';
import 'package:flutter/material.dart';

class myRouts {
  static List<Route> routes = [
    MaterialPageRoute<dynamic>(builder: (BuildContext context) => onboarding()),
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => Registration())
  ];

  static Route<dynamic>? usingRouts(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => LoginPage(
                ));
      case 'onboarting':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => onboarding());
      case 'registration':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const Registration());
    }
  }
}
