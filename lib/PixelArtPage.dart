import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Design.dart';
import 'DesignListProvider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PixelArtPage extends StatefulWidget {
  final ThemeData theme;
  final int index; // Negative on create

  PixelArtPage({super.key, required this.theme, required this.index});

  @override
  _PixelArtPageState createState() => _PixelArtPageState();
}

class _PixelArtPageState extends State<PixelArtPage> {
  late int _selectedTool;
  late Color _selectedColour;
  late Design newDesign;
  Color color1 = Color(0xFF98E4EE);
  Color color2 = Color(0xFFC498EE);

  @override
  void initState() {
    super.initState();
    _selectedTool = 0;
    _selectedColour = color1;
    newDesign = Design(
      previewPath: AssetImage("assets/bracelet.png"),
      pixelPath: AssetImage("assets/bracelet.png"),
      knotPath: AssetImage("assets/pattern.png"),
    );
  }

  Widget build(BuildContext context) {
    final designListProvider = Provider.of<DesignListProvider>(context);

    return Scaffold(
      /// App Bar
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
              /// Pattern Preview
              child: Container(
                width: 300, // Adjust width as needed
                height: 50, // Adjust height as needed
                decoration: BoxDecoration(
                  color: widget.theme.primaryColorLight,
                  image: DecorationImage(
                    image: AssetImage("assets/bracelet.png"),
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
                  /// Pixel Space
                  child: Container(
                    width: 200, // Adjust width as needed
                    height: 200, // Adjust height as needed
                    decoration: BoxDecoration(
                      color: widget.theme.primaryColorLight,
                      border: Border.all(
                        width: 4,
                        color: widget.theme.primaryColorDark
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[0].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[0].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[1].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[1].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[2].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[2].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[3].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[3].color = _selectedColour;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[4].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[4].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[5].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[5].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[6].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[6].color = _selectedColour;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[7].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[7].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[8].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[8].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[9].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[9].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[10].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[10].color = _selectedColour;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[11].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[11].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[12].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[12].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[13].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[13].color = _selectedColour;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[14].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[14].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[15].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[15].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[16].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[16].color = _selectedColour;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            MyStatefulContainer(
                              color: newDesign.pixelGrid[17].color,
                              onTap: () {
                                setState(() {
                                  newDesign.pixelGrid[17].color = _selectedColour;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              /// Toolbar
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
                      /// Colour Tool
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
                                  _selectedColour = color1;
                                });
                                // Add your onPressed logic here
                              },
                            ),
                          ),
                        ),
                      ),
                      Divider(color: widget.theme.primaryColor),
                      /// Eraser Tool
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
                                  _selectedColour = Colors.white;
                                });
                                // Add your onPressed logic here
                              },
                            ),
                          ),
                        ),
                      ),
                      Divider(color: widget.theme.primaryColor),
                      Spacer(),
                      /// Delete
                      Visibility(
                        visible: widget.index != -1,
                          child: IconButton(
                            icon: Icon(Icons.delete_outline, color: widget.theme.primaryColorDark),
                            tooltip: 'Delete',
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
                      /// Save
                      IconButton(
                        icon: Icon(Icons.bookmark_border, color: widget.theme.primaryColorDark),
                        tooltip: 'Save',
                        onPressed: () {
                          /// Add the new design to the provider list (CHANGE BEHAVIOUR FOR EDIT)
                          designListProvider.addDesign(newDesign);

                          /// Notify the user
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('New design saved'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                      /// Exit
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
          /// Bottom Section
          Container(
            color: widget.theme.primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 22), // Adjust the top padding as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /// Colour One
                    Visibility(
                      visible: _selectedTool == 0, // Show the first container if _selectedTool is 0
                      child: GestureDetector(
                        child: Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: color1,
                            border: Border.all(
                              width: _selectedColour == color1 ? 5 : 2,
                              color: widget.theme.primaryColorDark,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedColour = color1;
                          });
                        },
                      ),
                    ),
                    /// Colour Two
                    Visibility(
                      visible: _selectedTool == 0, // Show the first container if _selectedTool is 0
                      child: GestureDetector(
                        child: Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: color2,
                            border: Border.all(
                              width: _selectedColour == color2 ? 5 : 2,
                              color: widget.theme.primaryColorDark,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedColour = color2;
                          });
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

class MyStatefulContainer extends StatefulWidget {
  final Color color;
  final VoidCallback onTap;

  MyStatefulContainer({required this.color, required this.onTap});

  @override
  _MyStatefulContainerState createState() => _MyStatefulContainerState();
}

class _MyStatefulContainerState extends State<MyStatefulContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 35, // Adjust width of the square
        height: 35, // Adjust height of the square
        color: widget.color,
      ),
    );
  }
}