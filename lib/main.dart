import 'package:flutter/material.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Recipes App');
  }
}
