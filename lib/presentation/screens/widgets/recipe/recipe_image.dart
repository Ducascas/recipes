import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/data/models/news.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: recipe.id,
      child: CachedNetworkImage(
        imageUrl: recipe.image,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 260,
        placeholder: (_, __) => Container(
          color: Colors.grey.shade300,
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorWidget: (_, __, ___) => Container(
          color: Colors.grey.shade300,
          child: const Icon(Icons.broken_image, size: 48),
        ),
      ),
    );
  }
}
