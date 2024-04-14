part of 'onboarding_cubit.dart';

@immutable
sealed class OnboardingState {}

 class OnboardingInitial extends OnboardingState {}
 class OnboardingChange extends OnboardingState {}

