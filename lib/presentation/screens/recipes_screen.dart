import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/screens/widgets/widgets.dart';

class RecipesListScreen extends StatelessWidget {
  const RecipesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Рецепты'),
            const Spacer(),
            StatusNetwork(),
            ThemeButton()
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(54),
          child: SearchTextField(),
        ),
      ),
      body: Column(
        children: [
          const FiltersPanel(),
          Expanded(child: RecipesList()),
        ],
      ),
    );
  }
}
