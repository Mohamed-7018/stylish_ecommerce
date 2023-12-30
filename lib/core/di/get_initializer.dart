// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/share_prefs_helper.dart';
import 'package:stylish_ecommerce/core/networking/dio.dart';
import 'package:stylish_ecommerce/core/router/app_router.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_Vm/sign_in_vm_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/sign_in/sign_in_post/sign_in_post_cubit.dart';
import 'package:stylish_ecommerce/data/repository/sign_in_post_repo.dart';
import 'package:stylish_ecommerce/data/web_services/delete.dart';
import 'package:stylish_ecommerce/data/web_services/dio_factory.dart';
import 'package:stylish_ecommerce/data/web_services/get.dart';
import 'package:stylish_ecommerce/data/web_services/post.dart';
import 'package:stylish_ecommerce/data/web_services/put.dart';

final getIt = GetIt.instance;

/// A function to set up dependency injection using GetIt.
void setupGetIt() {
  // Register shared preferences
  getIt.registerLazySingleton<PrefUtils>(() => PrefUtils());

   
  // Register app router
  getIt.registerSingleton<AppRouter>(AppRouter());

  // Registering dio method
  getIt.registerLazySingleton<Dio>(() => createAndSetupDio());

  // Registering HTTP methods
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());
  getIt.registerLazySingleton<GetMethod>(() => GetMethod());
  getIt.registerLazySingleton<DeleteMethod>(() => DeleteMethod());
  getIt.registerLazySingleton<PutMethod>(() => PutMethod());
  getIt.registerLazySingleton<PostMethod>(() => PostMethod());

  // sign-in 
  getIt.registerLazySingleton<SignInPostRepository>(
      () => SignInPostRepository(postMethod: getIt(), dio: getIt()));
  getIt.registerLazySingleton<SignInViewModelCubit>(() => SignInViewModelCubit());
  getIt.registerLazySingleton<SignInPostCubit>(() => SignInPostCubit(getIt()));



}
