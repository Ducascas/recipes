import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/di/locator_service.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';

class BlocProviders {
  static final listProviders = [
    BlocProvider<RecipesCubit>(
      create: (context) => RecipesCubit(sl())..loadRecipes(),
    ),
    BlocProvider<FilterCubit>(create: (context) => FilterCubit()),
    BlocProvider<SearchCubit>(create: (context) => SearchCubit()),
    BlocProvider<ThemeCubit>(create: (context) => ThemeCubit(sl())),
  ];
}
