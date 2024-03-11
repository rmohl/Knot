import 'package:flutter/material.dart';

class InstructionsPage extends StatelessWidget {
  final ThemeData theme;

  InstructionsPage({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: Text(
            'Instructions page',
            style: theme.textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}