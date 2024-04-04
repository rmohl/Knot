import 'package:flutter/material.dart';
import 'package:knotsense/Design.dart';
import 'package:provider/provider.dart';
import 'DesignListProvider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PixelArtEditPage extends StatefulWidget {
  final Design design;
  final ThemeData theme;
  final int index;

  PixelArtEditPage({super.key, required this.design, required this.index, required this.theme});

  @override
  _PixelArtEditPageState createState() => _PixelArtEditPageState();
}

class _PixelArtEditPageState extends State<PixelArtEditPage> {
  int _selectedTool = 0;

  @override
  void initState() {
    super.initState();
    _selectedTool = 0;
  }

  Widget build(BuildContext context) {
    final designListProvider = Provider.of<DesignListProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.theme.primaryColor,
        iconTheme: IconThemeData(color: widget.theme.primaryColorDark),
        centerTitle: true,
        title: Text('Pixel Art Design', style: widget.theme.textTheme.displaySmall),
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
                  color: widget.theme.primaryColorLight,
                  image: DecorationImage(
                    image: widget.design.previewPath,
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                      width: 4,
                      color: widget.theme.primaryColorDark
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'Pattern Preview', // Your text goes here
              style: widget.theme.textTheme.bodyMedium, // Adjust font size as needed
            ),
          ),
          Divider(color: widget.theme.primaryColor, height: 2, endIndent: 0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70.0, bottom: 20.0), // Adjust the top padding as needed
                child: Center(
                  child: Container(
                    width: 200, // Adjust width as needed
                    height: 200, // Adjust height as needed
                    decoration: BoxDecoration(
                      color: widget.theme.primaryColorLight,
                      image: DecorationImage(
                        image: widget.design.pixelPath,
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                          width: 4,
                          color: widget.theme.primaryColorDark
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Container(
                  width: 55, // Adjust width as needed
                  height: 320, // Adjust height as needed
                  decoration: BoxDecoration(
                    color: widget.theme.primaryColorLight,
                    border: Border.all(
                      color: widget.theme.primaryColorDark,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0), // Adjust the padding as needed
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selectedTool == 0 ? widget.theme.primaryColor : Colors.transparent,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.border_color, color: widget.theme.primaryColorDark),
                              tooltip: 'Colour Pen',
                              onPressed: () {
                                setState(() {
                                  _selectedTool = 0;
                                });
                                // Add your onPressed logic here
                              },
                            ),
                          ),
                        ),
                      ),
                      Divider(color: widget.theme.primaryColor),
                      Padding(
                        padding: EdgeInsets.all(4.0), // Adjust the padding as needed
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selectedTool == 1 ? widget.theme.primaryColor : Colors.transparent,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: Icon(FontAwesomeIcons.eraser, color: widget.theme.primaryColorDark),
                              tooltip: 'Eraser',
                              onPressed: () {
                                setState(() {
                                  _selectedTool = 1;
                                });
                                // Add your onPressed logic here
                              },
                            ),
                          ),
                        ),
                      ),
                      Divider(color: widget.theme.primaryColor),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.bookmark_border, color: widget.theme.primaryColorDark),
                        tooltip: 'Save',
                        onPressed: () {
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.exit_to_app, color: widget.theme.primaryColorDark),
                        tooltip: 'Exit',
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Divider(color: widget.theme.primaryColor, height: 1),
          Container(
            color: widget.theme.primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 22), // Adjust the top padding as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.theme.primaryColorLight,
                      border: Border.all(
                          width: 2,
                          color: widget.theme.primaryColorDark
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.upload, color: widget.theme.primaryColorDark),
                      tooltip: 'upload',
                      onPressed: () {
                      },
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.theme.primaryColorLight,
                      border: Border.all(
                          width: 2,
                          color: widget.theme.primaryColorDark
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.delete, color: widget.theme.primaryColorDark),
                      tooltip: 'delete',
                      onPressed: () {
                        /// Delete Confirmation
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Delete Design'),
                              content: const SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text('Are you sure you want to delete this design?'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('No', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: const Text('Yes', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo)),
                                  onPressed: () {
                                    /// Delete this design
                                    designListProvider.removeDesignAtIndex(widget.index);
                                    Navigator.of(context).popUntil((route) => route.isFirst);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}