import 'package:flutter/material.dart';
import 'package:knotsense/ViewPatternPage.dart';
import 'package:provider/provider.dart';

import 'Design.dart';
import 'DesignListProvider.dart';
import 'KnotPattern.dart';
import 'PixelArtPage.dart';

class PatternCard extends StatefulWidget {
  final ThemeData theme;
  final int index;
  final Design design;

  PatternCard({super.key, required this.design, required this.index, required this.theme});

  @override
  _PatternCardState createState() => _PatternCardState();
}

class _PatternCardState extends State<PatternCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DesignListProvider>(
        builder: (context, designListProvider, child) {
          final ThemeData theme = Theme.of(context);
          final Design design = designListProvider.designList[widget.index];

          return Card(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0), // Add vertical padding
                child: Row(
                  children: [
                    Container(
                      width: 245, // Adjust width as needed
                      height: 40, // Adjust height as needed
                      decoration: BoxDecoration(
                        color: theme.primaryColorLight,
                        border: Border.all(
                          width: 2,
                          color: theme.primaryColorDark,
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[3].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[2].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[1].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[0].color, knotType: 'n'),
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
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[6].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[5].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[4].color, knotType: 'n'),
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
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[10].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[9].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[8].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[7].color, knotType: 'n'),
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
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[13].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[12].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[11].color, knotType: 'n'),
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
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[17].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[16].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[15].color, knotType: 'n'),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                                height: 8,
                                child: CustomPaint(
                                  painter: KnotPainter(x: 0, y: 0, colour: designListProvider.designList[widget.index].pixelGrid[14].color, knotType: 'n'),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.design_services, color: theme.primaryColorDark),
                        tooltip: 'Edit',
                        onPressed: () {
                          /// Notify the user of edit autosave
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Changes Will Autosave'),
                              duration: Duration(seconds: 2),
                              showCloseIcon: true,
                            ),
                          );

                          // Navigate to the edit page when the edit icon is tapped
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return PixelArtPage(index: widget.index, theme: theme);
                            },
                          ));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.visibility, color: theme.primaryColorDark),
                        tooltip: 'View',
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return ViewPatternPage(index: widget.index, theme: theme);
                            },
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          );
          },
    );
  }
}