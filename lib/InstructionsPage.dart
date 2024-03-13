import 'package:flutter/material.dart';

class InstructionsPage extends StatelessWidget {
  final ThemeData theme;
  final SizedBox vSpace = const SizedBox(height: 10);
  final SizedBox hSpace = const SizedBox(width: 10);

  InstructionsPage({super.key, required this.theme});

  Column subtitleText(text, {startingSpace = true}){
    if (startingSpace) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            vSpace,
            Text(text, style: theme.textTheme.titleMedium),
            vSpace,
          ]
      );
    } else {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(text, style: theme.textTheme.titleMedium),
            vSpace,
          ]
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Card (
                child: ExpansionTile(
                  title: Text(
                      'How to Create a Friendship Bracelet',
                      style: theme.textTheme.headlineSmall
                  ),
                  children: <Widget>[
                    ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            subtitleText("1. Gather Your Materials", startingSpace: false),
                            Text(" • Embroidery floss or string", style: theme.textTheme.bodyLarge),
                            Text(" • Scissors", style: theme.textTheme.bodyLarge),
                            Text(" • Tape or a clipboard (for holding the string in place!)", style: theme.textTheme.bodyLarge),
                            subtitleText("2. Pick Your Pattern"),
                            Text("A pattern will allow you to determine how many different strings you need, how many different colours will be in your bracelet, and what knots to tie in order to create your bracelet.", style: theme.textTheme.bodyLarge),
                            subtitleText("3. Setting Up Your Bracelet"),
                            Text("Cut the number of strings you need. Ideal string length will be the distance from your shoulder to the end of your outstretched arm. Tie the ends of your strings together with a simple knot. Secure the tied strings to a stable surface.", style: theme.textTheme.bodyLarge),
                            subtitleText("4. Creating Your Bracelet"),
                            Text("Follow your chosen pattern to create your bracelet. Repeat the pattern until you reach a length that you're happy with.", style: theme.textTheme.bodyLarge),
                            subtitleText("5. Finishing Your Bracelet"),
                            Text("Tie off your bracelet with a simple knot and cut off the extra string. Congratulations! You've successfully made a friendship bracelet :)", style: theme.textTheme.bodyLarge),
                            vSpace
                          ],
                        )
                    ),
                  ],
                )
              ),
              Card (
                  child: ExpansionTile(
                    title: Text(
                        'Types of Knots',
                        style: theme.textTheme.headlineSmall
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              subtitleText("Forward Knot", startingSpace: false),
                              Text("1. Create a '4' by placing your working string over your interior string.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/forward1.jpeg", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("2. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/forward2.jpeg", scale: 4.75),
                                      hSpace,
                                      Image.asset("assets/forward3.jpeg", scale: 4.75),
                                    ],
                                  )
                              ),
                              vSpace,
                              Text("3. Repeat once more!", style: theme.textTheme.bodyLarge),
                              subtitleText("Backward Knot"),
                              Text("1. Create a backwards '4' by placing your working string over your interior string.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/backward1.jpeg", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("2. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/backward2.jpeg", scale: 4.75),
                                      hSpace,
                                      Image.asset("assets/backward3.jpeg", scale: 4.75),
                                    ],
                                  )
                              ),
                              vSpace,
                              Text("3. Repeat once more!", style: theme.textTheme.bodyLarge),
                              subtitleText("Forward-Backward Knot"),
                              Text("1. Create a '4' by placing your working string over your interior string.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/forward1.jpeg", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("2. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/forward2.jpeg", scale: 4.75),
                                      hSpace,
                                      Image.asset("assets/forward3.jpeg", scale: 4.75),
                                    ],
                                  )
                              ),
                              vSpace,
                              Text("3. Create a backwards '4' by placing your working string over your interior string.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/forward-backward1.jpeg", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("4. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/forward-backward2.jpeg", scale: 4.75),
                                      hSpace,
                                      Image.asset("assets/forward-backward3.jpeg", scale: 4.75),
                                    ],
                                  )
                              ),
                              vSpace,
                              subtitleText("Backward-Forward Knot"),
                              Text("1. Create a backwards '4' by placing your working string over your interior string.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/backward1.jpeg", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("2. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/backward2.jpeg", scale: 4.75),
                                      hSpace,
                                      Image.asset("assets/backward3.jpeg", scale: 4.75),
                                    ],
                                  )
                              ),
                              vSpace,
                              Text("3. Create a '4' by placing your working string over your interior string.", style: theme.textTheme.bodyLarge),
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/backward-forward1.jpeg", fit: BoxFit.fitWidth),
                              ),
                              Text("4. Pull the end of the working string under and through the hole in the '4' and tighten.", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/backward-forward2.jpeg", scale: 4.75),
                                      hSpace,
                                      Image.asset("assets/backward-forward3.jpeg", scale: 4.75),
                                    ],
                                  )
                              ),
                              vSpace,
                            ],
                          )
                      ),
                    ],
                  )
              ),
              Card (
                  child: ExpansionTile(
                    title: Text(
                        'How to Read Bracelet Patterns',
                        style: theme.textTheme.headlineSmall
                    ),
                    children: <Widget>[
                      ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("A pattern will look something like this:", style: theme.textTheme.bodyLarge),
                              vSpace,
                              Container(
                                width: double.infinity,
                                child: Image.asset("assets/pattern-example.png", fit: BoxFit.fitWidth),
                              ),
                              vSpace,
                              Text("The circles represent each knot. The arrows present on each knot represent what type of knot it is.", style: theme.textTheme.bodyLarge),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.south_east,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a forward knot.")),
                                ],
                              ),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.south_west,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a backward knot.")),
                                ],
                              ),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.call_missed,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a forward-backward knot.")),
                                ],
                              ),
                              Row(
                                children: [
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.call_missed_outgoing,
                                        color: Colors.black,
                                      ),
                                      onPressed: null,
                                    ),
                                  ),
                                  Flexible(child: Text("This arrow indicates a backward-forward knot.")),
                                  ],
                                )
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ]
        )
    );
  }
}