import 'package:flutter/material.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/presentation/screens/widgets/widgets.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetails({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).hintColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeImage(recipe: recipe),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20.0,
                children: [
                  Text(
                    recipe.text,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).hintColor,
                    ),
                  ),

                  const TextSectionTitle('Ингредиенты'),
                  IngredientsList(items: recipe.ingredientsOne),

                  if (recipe.ingredientsTwo.isNotEmpty) ...[
                    const TextSectionTitle('Дополнительные ингредиенты'),
                    IngredientsList(items: recipe.ingredientsTwo),
                  ],

                  const TextSectionTitle('Приготовление'),
                  RecipeStepsList(steps: recipe.steps),

                  const TextSectionTitle('Пищевая ценность'),
                  EnergyList(items: recipe.energy),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
