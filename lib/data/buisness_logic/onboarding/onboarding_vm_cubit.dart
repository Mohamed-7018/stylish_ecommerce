import 'package:flutter/material.dart';

/// ViewModel state representing the initial state of the OnboardingViewModel.
@immutable
abstract class OnboardingViewModelState {}

/// Initial state for the OnboardingViewModel.
class OnboardingViewModelStateIntial extends OnboardingViewModelState {}

/// State indicating a change in the current page index of the onboarding screens.
class OnboardingChangeIndex extends OnboardingViewModelState {}
