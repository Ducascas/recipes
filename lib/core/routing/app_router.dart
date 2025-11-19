import 'package:go_router/go_router.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/presentation/screens/recipes_screen.dart';
import 'package:recipes_app/presentation/screens/widgets/widgets.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const RecipesListScreen(),
        routes: [
          GoRoute(
            path: '/recipe/:id',
            builder: (context, state) {
              final recipe = state.extra as Recipe;
              return RecipeDetails(recipe: recipe);
            },
          ),
        ],
      ),
    ],
  );
}
