import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/data/models/news.dart';

class RecipeStepsList extends StatelessWidget {
  final List<RecipeStep> steps;

  const RecipeStepsList({required this.steps, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < steps.length; i++)
          _StepItem(step: steps[i], index: i + 1),
      ],
    );
  }
}

class _StepItem extends StatelessWidget {
  final RecipeStep step;
  final int index;

  const _StepItem({required this.step, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Text(
            '$index. ${step.text}',
            style: TextStyle(fontSize: 16, color: Theme.of(context).hintColor),
          ),
          Column(
            spacing: 6.0,
            children: [
              if (step.image1.isNotEmpty) _StepImage(url: step.image1),
              if (step.image2.isNotEmpty) ...[
                const SizedBox(width: 8),
                _StepImage(url: step.image2),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _StepImage extends StatelessWidget {
  final String url;

  const _StepImage({required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      width: double.infinity,
      height: 160,
      placeholder: (_, __) => Container(
        color: Colors.grey.shade300,
        child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      ),
      errorWidget: (_, __, ___) => Container(
        color: Colors.grey.shade300,
        child: const Icon(Icons.error),
      ),
    );
  }
}
