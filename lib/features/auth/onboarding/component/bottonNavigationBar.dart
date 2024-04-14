import 'package:auth_test/features/auth/onboarding/controller/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class onboardingBotton extends StatelessWidget {
  OnboardingCubit controller;

  onboardingBotton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
        OnboardingCubit controller = context.read<OnboardingCubit>();
        return PageView(
            controller: controller.pageController,
            children: List.generate(
              controller.model.length,
              (index) {
                return SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            controller.onchangeback(context);
                          },
                          child: Text('back')),
                      TextButton(
                          onPressed: controller.onchangeNext,
                          child: Text('next'))
                    ],
                  ),
                );
              },
            ));
      }),
    );
  }
}
