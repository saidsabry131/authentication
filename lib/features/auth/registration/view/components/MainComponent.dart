import 'package:auth_test/core/utills/Decorations.dart';
import 'package:auth_test/features/auth/registration/controller/cubit/registration_cubit.dart';
import 'package:auth_test/features/auth/registration/view/components/myformat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utills/validation.dart';

//import '../../../../../core/utills/Decorations.dart';
class MainComponent extends StatelessWidget {
  const MainComponent({super.key, required this.controller});
  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          return Form(
            key: controller.formkey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.firstNamecontroller,
                  keyboardType: TextInputType.name,
                  validator: Validation().validateName,
                  decoration: Decorations().setDecoTextFeild().copyWith(
                        label: Text("Username"),
                        prefixIcon: Icon(Icons.person_add_alt_1_sharp),
                      ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.agecontroller,  
                  keyboardType: TextInputType.number,
                  inputFormatters: [myTextformat()],
                  //validator: Validation().validateName,
                  decoration: Decorations().setDecoTextFeild().copyWith(
                        label: Text("age"),
                        prefixIcon: Icon(Icons.person_add_alt_1_sharp),
                      ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.mailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  validator: Validation().validateEmail,
                  decoration: Decorations().setDecoTextFeild().copyWith(
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.phoncontroller,
                  keyboardType: TextInputType.phone,
                  validator: Validation().validatePhone,
                  decoration: Decorations().setDecoTextFeild().copyWith(
                        label: Text("Phone number"),
                        prefixIcon: Icon(Icons.phone),
                      ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.passcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  validator: Validation().validatePassword,
                  decoration: Decorations().setDecoTextFeild().copyWith(
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                  obscureText: true,
                  obscuringCharacter: "*",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
