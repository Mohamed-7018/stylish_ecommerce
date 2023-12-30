import 'package:flutter/material.dart';

/// Abstract base class for the states related to the Sign In view model.
@immutable
abstract class SignInViewModelState {}

/// Initial state for the Sign In view model.
class SignInViewModelStateIntial extends SignInViewModelState {}

/// State representing the toggling of the password visibility.
class SignInTogglePasswordState extends SignInViewModelState {}
