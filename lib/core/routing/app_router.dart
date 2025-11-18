import 'package:go_router/go_router.dart';
import 'package:recipes_app/presentation/screens/recipes_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [GoRoute(path: '/', builder: (_, __) => const RecipesListScreen())],
  );
}
