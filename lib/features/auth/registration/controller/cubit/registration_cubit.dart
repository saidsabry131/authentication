import 'dart:developer';

import 'package:auth_test/core/utills/routes.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController firstNamecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController phoncontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void pressedconfirm(BuildContext context) {
    if (formkey.currentState!.validate()) {
      Navigator.pushNamed(context, 'login',
          arguments: [firstNamecontroller.text]);
    } else {
      print('invalid input');
    }
  }
}
