import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:recipes_app/data/datasource/datasource.dart';
import 'package:recipes_app/data/repositories/recipes_repository.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';

final sl = GetIt.instance;

abstract class Locator {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    //External Services
    sl.registerLazySingleton<Dio>(() => Dio());

    //DataSources
    sl.registerLazySingleton<RecipesApi>(() => RecipesApi(dio: sl()));

    //Storage
    sl.registerLazySingleton<BaseStorage>(() => BaseStorage());
    sl.registerLazySingleton<RecipesStorage>(() => RecipesStorage());

    //Repository
    sl.registerLazySingleton<RecipesRepository>(
      () => RecipesRepository(sl(), sl()),
    );

    //Cubit
    sl.registerFactory(() => RecipesCubit(sl()));
  }
}
