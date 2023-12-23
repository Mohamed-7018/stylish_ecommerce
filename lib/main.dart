import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_ecommerce/core/bloc_observer/bloc_observer.dart';
import 'package:stylish_ecommerce/core/di/get_initializer.dart';
import 'package:stylish_ecommerce/stylish_ecommerce.dart';

/// The main entry point for the Flutter application.
void main() {
  /// Setup dependency injection using GetIt.
  setupGetIt();

  /// Sets the global observer for BLoC changes using MyBlocObserver.
  Bloc.observer = MyBlocObserver();
  
  /// Ensures that Flutter bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();  

  /// Runs the application by creating an instance of MyApp.
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const StylishEcommerce(), // Wrap your app
    ),
  );
}
