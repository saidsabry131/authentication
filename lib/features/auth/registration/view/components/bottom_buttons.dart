import 'package:auth_test/features/auth/login/view/page/LoginPage.dart';
import 'package:auth_test/features/auth/registration/controller/cubit/registration_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomButtons extends StatelessWidget {
   const BottomButtons({super.key, required this.controller});
  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          return Column(
      children: [
        TextButton(
          onPressed: ()=>controller.pressedconfirm(context),
          child: const Text("confirm"),
        ),
        
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
               Text(
                "Have account?",
                style: TextStyle(color: Colors.blue),
              ),
            
            TextButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), 
                );
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ],
    );
  }));
}
}