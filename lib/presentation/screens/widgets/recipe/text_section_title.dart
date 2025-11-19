import 'package:flutter/material.dart';

class TextSectionTitle extends StatelessWidget {
  const TextSectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).hintColor,
      ),
    );
  }
}
