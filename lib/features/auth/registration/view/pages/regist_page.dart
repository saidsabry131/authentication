import 'package:auth_test/features/auth/registration/controller/cubit/registration_cubit.dart';
import 'package:auth_test/features/auth/registration/view/components/MainComponent.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/features/auth/registration/view/components/bottom_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<RegistrationCubit>(
        create: (context) => RegistrationCubit(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  title: Text("Let's create your account"),
                ),
                body: Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 50),
                  child: Column(children: [
                    MainComponent(
                      controller: RegistrationCubit(),
                    ),
                    BottomButtons(controller: RegistrationCubit() ,)
                  ]),
                ));
          },
        ),
      ),
    );
  }
}
