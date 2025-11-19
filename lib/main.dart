import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/di/bloc_providers.dart';
import 'package:recipes_app/core/di/locator_service.dart';
import 'package:recipes_app/core/routing/app_router.dart';
import 'package:recipes_app/core/theme/theme_app.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locator.init();
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.listProviders,
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, themeState) {
          final themeData = themeState == AppTheme.light
              ? ThemeApp.lightTheme
              : ThemeApp.darkTheme;
          return MaterialApp.router(
            title: 'Recipes App',
            theme: themeData,
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
