import 'package:flutter/material.dart';
import 'package:knotsense/ViewPatternPage.dart';

import 'Design.dart';
import 'PixelArtPage.dart';

class PatternCard extends StatelessWidget {
  final ThemeData theme;
  final int index;
  final Design design;

  PatternCard({super.key, required this.design, required this.index, required this.theme});

  @override
  Widget build(BuildContext context) {
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
                  image: DecorationImage(
                    image: design.previewPath,
                    fit: BoxFit.cover,
                  ),
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
                          return PixelArtPage(index: index, theme: theme);
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
                          return ViewPatternPage(design: design, index: index, theme: theme);
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
  }
}