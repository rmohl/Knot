import 'package:flutter/material.dart';

class InstructionsPage extends StatelessWidget {
  final ThemeData theme;
  final SizedBox space = const SizedBox(height: 10);

  InstructionsPage({super.key, required this.theme});

  Column subtitleText(text){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          space,
          Text(text, style: theme.textTheme.titleMedium),
          space,
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  tileColor: theme.primaryColorLight,
                  title: Text(
                      'How to Create a String Bracelet',
                      style: theme.textTheme.headlineSmall
                  ),
                ),
              ),
              Card(
                child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        subtitleText("1. Gather Your Materials"),
                        Text(" • Embroidery floss or string", style: theme.textTheme.bodyMedium),
                        Text(" • Tape or clipboard (for holding the string in place!)", style: theme.textTheme.bodyMedium),
                        subtitleText("2. Pick Your Pattern"),
                        Text("A pattern will allow you to determine how many different strings you need, how many different colours will be in your bracelet, and what knots to tie in order to create your bracelet.", style: theme.textTheme.bodyMedium),
                        subtitleText("3. Setting Up Your Bracelet"),
                        subtitleText("4. Creating Your Bracelet"),
                        subtitleText("5. Finishing Your Bracelet"),
                        space
                      ],
                    )
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: theme.primaryColorLight,
                  title: Text(
                      'Types of Knots',
                      style: theme.textTheme.headlineSmall
                  ),
                ),
              ),
              Card(
                child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        subtitleText("Forward Knot"),
                        Text("1. Create a '4' by placing your working string over the interior string.", style: theme.textTheme.bodyMedium),
                        Text("2. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyMedium),
                        Text("3. Repeat once more.", style: theme.textTheme.bodyMedium),
                        subtitleText("Backward Knot"),
                        Text("Create a backwards '4' with your left and right strings. Pull the end of the right string under and through the hole in the '4' and tighten. Repeat once more.", style: theme.textTheme.bodyMedium),
                        subtitleText("Forward-Backward Knot"),
                        Text("Create a '4' with your left and right strings. Pull the end of the left string under and through the hole in the '4' and tighten. ", style: theme.textTheme.bodyMedium),
                        subtitleText("Backward-Forward Knot"),
                        Text("Create a '4' with your left and right strings. Pull the end of the left string under and through the hole in the '4'.", style: theme.textTheme.bodyMedium),
                      ],
                    )
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                      'How to Read Patterns',
                      style: theme.textTheme.headlineSmall
                  ),
                ),
              ),
              Card(
                child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("1. hello"),
                        Text("hi"),
                      ],
                    )
                ),
              ),
            ]
        )
    );
  }
}