import 'package:auth_test/features/auth/onboarding/controller/cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class onboardingBody extends StatelessWidget {

   OnboardingCubit controller;
  onboardingBody({super.key,required this.controller});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('welcom to my app'),
        Expanded(
          child: BlocProvider<OnboardingCubit>.value(
            value: controller,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                OnboardingCubit controller = context.read<OnboardingCubit>();
                return PageView(
                  children: List.generate(controller.model.length, (index) {
                    return Column(
                      children: [
                        Image.asset(controller.model[index].image),
                        Text(
                          controller.model[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: controller.model[index].color,
                          ),
                        ),
                        Text(
                          controller.model[index].subtitle,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: controller.model[index].color,
                          ),
                        ),
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
