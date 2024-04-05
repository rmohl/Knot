import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Design.dart';
import 'DesignListProvider.dart';
import 'KnotPattern.dart';
import 'BraceletAlgorithm.dart';
import 'PatternCard.dart';

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

  List<Widget> buildColumns(pixels) {
    return [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[3].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[2].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[1].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[0].color, knotType: 'n'),
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[6].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[5].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[4].color, knotType: 'n'),
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[10].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[9].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[8].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[7].color, knotType: 'n'),
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[13].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[12].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[11].color, knotType: 'n'),
            ),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[17].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[16].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[15].color, knotType: 'n'),
            ),
          ),
          SizedBox(
            width: 8,
            height: 8,
            child: CustomPaint(
              painter: KnotPainter(x: 0, y: 0, colour: pixels[14].color, knotType: 'n'),
            ),
          ),
        ],
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    final designListProvider = Provider.of<DesignListProvider>(context);
    List<int> numData = designListProvider.getDesignAtIndex(index).colorsToNums();
    List<Color> colors = designListProvider.getDesignAtIndex(index).colorsToList();
    PixelToPattern algorithmGenerator = PixelToPattern(pattern: numData);

    setState(() {
      knotData = algorithmGenerator.getKnotInfo();
      colourData = colors;
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
                width: 285, // Adjust width as needed
                height: 40, // A
                decoration: BoxDecoration(
                  color: theme.primaryColorLight,
                  border: Border.all(
                    width: 2,
                    color: theme.primaryColorDark,
                  ),
                ),// djust height as needed
                child: Row (
                  children: [...buildColumns(designListProvider.designList[widget.index].pixelGrid),
                    ...buildColumns(designListProvider.designList[widget.index].pixelGrid),
                    ...buildColumns(designListProvider.designList[widget.index].pixelGrid),
                    ...buildColumns(designListProvider.designList[widget.index].pixelGrid),
                    ...buildColumns(designListProvider.designList[widget.index].pixelGrid),
                    ...buildColumns(designListProvider.designList[widget.index].pixelGrid),
                    ...buildColumns(designListProvider.designList[widget.index].pixelGrid)],
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