
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stylish_ecommerce/core/helper/share_prefs_helper.dart';
import 'package:stylish_ecommerce/core/networking/dio.dart';
import 'package:stylish_ecommerce/core/router/auto_route.dart';

final getIt = GetIt.instance;

/// A function to set up dependency injection using GetIt.
void setupGetIt() {
  // Register shared preferences
  getIt.registerLazySingleton<PrefUtils>(() => PrefUtils());

  // Register app router
  getIt.registerSingleton<AppRouter>(AppRouter());

  // Registering dio method
  getIt.registerLazySingleton<Dio>(() => createAndSetupDio());

}