// 🐦 Flutter imports:
import 'package:flutter/material.dart';

/// ViewModel state representing the initial state of the BannersViewModelState.
@immutable
abstract class BannersViewModelState {}

/// Initial state for the BannersViewModelState.
class BannersViewModelStateIntial extends BannersViewModelState {}

/// State indicating a change in the current page index of the benners .
class BannersViewModelStateChangeIndex extends BannersViewModelState {}
