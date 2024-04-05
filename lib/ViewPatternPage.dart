import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Design.dart';
import 'DesignListProvider.dart';
import 'KnotPattern.dart';
import 'BraceletAlgorithm.dart';

class ViewPatternPage extends StatefulWidget {
  final ThemeData theme;
  final int index;

  ViewPatternPage({super.key, required this.index, required this.theme});

  @override
  ViewPatternPageState createState() => ViewPatternPageState(index: index, theme: theme);
}

class ViewPatternPageState extends State<ViewPatternPage> {
  ViewPatternPageState({required this.index, required this.theme});
  final ThemeData theme;
  final int index;

  List<String> knotData = [];
  List<Color> colourData = [];

  @override

  @override
  Widget build(BuildContext context) {
    final designListProvider = Provider.of<DesignListProvider>(context);

    List<int> numData = designListProvider.getDesignAtIndex(index).colorsToNums();

    PixelToPattern algorithmGenerator = PixelToPattern(pattern: numData);

    setState(() {
      knotData = algorithmGenerator.getKnotInfo();
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        iconTheme: IconThemeData(color: theme.primaryColorDark),
        centerTitle: true,
        title: Text('Knot Pattern', style: theme.textTheme.displaySmall),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0), // Adjust the top padding as needed
            child: Center(
              child: Container(
                width: 300, // Adjust width as needed
                height: 50, // Adjust height as needed
                decoration: BoxDecoration(
                  color: theme.primaryColorLight,
                  image: DecorationImage(
                    image: AssetImage('assets/pattern.png'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                      width: 4,
                      color: theme.primaryColorDark
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'Pattern Preview', // Your text goes here
              style: theme.textTheme.bodyMedium, // Adjust font size as needed
            ),
          ),
          Divider(color: theme.primaryColor, height: 2, endIndent: 0),
          Padding(
            padding: const EdgeInsets.only(top: 30), // Adjust the top padding as needed
            child: Center(
              child: Container(
                width: 270, // Adjust width as needed
                height: 340, // Adjust height as needed
                child: KnotPattern(knotData: knotData, colourData: colourData,)
              ),
            ),
          ),
          Center(
            child: Text(
              'Knot Instructions', // Your text goes here
              style: theme.textTheme.bodyMedium, // Adjust font size as needed
            ),
          ),
        ],
      ),
    );
  }
}