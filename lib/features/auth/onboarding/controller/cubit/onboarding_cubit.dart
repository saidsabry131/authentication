// ignore: depend_on_referenced_packages

import 'dart:ffi';

import 'package:auth_test/features/auth/onboarding/model/onboardingmodel.dart';
import 'package:auth_test/features/auth/registration/view/pages/regist_page.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  PageController pageController = PageController();
  // ignore: body_might_complete_normally_nullable
  Void? onchangeNext() {
    pageController.nextPage(
        duration: Duration(seconds: 2), curve: Curves.bounceIn);
  }

  Future<Void?> onchangeback(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  await sharedPreferences.setBool('onboarding', true);
    Navigator.push(
      context,
      MaterialPageRoute<void>(
          builder: (BuildContext context) => const Registration()),
    );
  }

  List model = [
    onboardingModel(
      image: 'assets/images/OIP.jpeg',
      title: 'first',
      sibtitle: 'firstScreen',
      color: Colors.green,
    ),
    onboardingModel(
      image: 'assets/images/OIP.jpeg',
      title: 'second',
      sibtitle: 'secondScreen',
      color: Colors.blue,
    ),
    onboardingModel(
      image: 'assets/images/OIP.jpeg',
      title: 'third',
      sibtitle: 'thirdScreen',
      color: Colors.red,
    )
  ];
}
