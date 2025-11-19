import 'package:flutter/material.dart';
import 'package:recipes_app/data/models/news.dart';

class EnergyList extends StatelessWidget {
  final List<EnergyItem> items;

  const EnergyList({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            '${e.title}: ${e.text}',
            style: TextStyle(color: Theme.of(context).hintColor),
          ),
        );
      }).toList(),
    );
  }
}
