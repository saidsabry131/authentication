import 'package:auth_test/core/utills/routes.dart';
import 'package:auth_test/features/auth/login/view/page/LoginPage.dart';
import 'package:auth_test/features/auth/onboarding/view/page/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ffi';
import 'features/auth/registration/view/pages/regist_page.dart';


//import 'core/utills/validation.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;
  MaterialApp materialApp = MaterialApp(
    // home: onBoarding ? Registration() : onboarding(),
    onGenerateRoute:myRouts.usingRouts,
    onGenerateInitialRoutes: (_)=>myRouts.routes,

  );
  runApp(materialApp);
}


