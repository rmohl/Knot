import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Design.dart';
import 'DesignListProvider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PixelArtPage extends StatefulWidget {
  final Design? design;
  final ThemeData theme;
  final int index; // Negative on create

  PixelArtPage({super.key, required this.theme, required this.index, this.design});

  @override
  _PixelArtPageState createState() => _PixelArtPageState();
}

class _PixelArtPageState extends State<PixelArtPage> {
  int _selectedTool = 0;

  @override
  void initState() {
    super.initState();
    _selectedTool = 0;
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
                    image: widget.index == -1 ? AssetImage("assets/bracelet.png") : widget.design?.previewPath ?? AssetImage("assets/bracelet.png"),
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
                      image: DecorationImage(
                        image: widget.index == -1 ? AssetImage("assets/bracelet.png") : widget.design?.pixelPath ?? AssetImage("assets/bracelet.png"),
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
                      IconButton(
                        icon: Icon(Icons.bookmark_border, color: widget.theme.primaryColorDark),
                        tooltip: 'Save',
                        onPressed: () {
                          // Create a new Design object
                          Design newDesign = Design(
                            previewPath: AssetImage("assets/bracelet.png"),
                            pixelPath: AssetImage("assets/bracelet.png"),
                            knotPath: AssetImage("assets/pattern.png"),
                          );

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
                    Visibility(
                      visible: _selectedTool == 0, // Show the first container if _selectedTool is 0
                      child: Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          border: Border.all(
                            width: 2,
                            color: widget.theme.primaryColorDark,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _selectedTool == 0, // Show the second container if _selectedTool is 0
                      child: Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          border: Border.all(
                            width: 2,
                            color: widget.theme.primaryColorDark,
                          ),
                        ),
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