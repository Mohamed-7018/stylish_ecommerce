// 🐦 Flutter imports:
import 'package:flutter/material.dart';


/// Abstract base class for the states related to the Sign Up view model.
@immutable
abstract class SignUpViewModelState {}

/// Initial state for the Sign Up view model.
class SignUpViewModelStateIntial extends SignUpViewModelState {}


/// State representing the toggling of the password visibility.
class SignUpTogglePasswordState extends SignUpViewModelState {}

