import 'package:flutter/material.dart';
import 'package:recipes_app/data/models/news.dart';

class IngredientsList extends StatelessWidget {
  final List<IngredientItem> items;

  const IngredientsList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            '${i.title} — ${i.text}',
            style: TextStyle(color: Theme.of(context).hintColor),
          ),
        );
      }).toList(),
    );
  }
}
