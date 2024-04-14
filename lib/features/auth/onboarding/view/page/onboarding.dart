import 'package:auth_test/features/auth/onboarding/component/onboardingBody.dart';
import 'package:auth_test/features/auth/onboarding/controller/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider<OnboardingCubit>(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
        OnboardingCubit controller = context.read<OnboardingCubit>();
        return Scaffold(
          body: onboardingBody(
            controller: controller,
          ),
          bottomNavigationBar: onboardingBody(
            controller: controller,
          ),
        );
      }),
    ));
  }
}
