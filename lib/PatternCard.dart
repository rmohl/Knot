import 'package:flutter/material.dart';
import 'package:knotsense/PixelArtEditPage.dart';

import 'Design.dart';

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
                width: 260, // Adjust width as needed
                height: 40, // Adjust height as needed
                decoration: BoxDecoration(
                  color: theme.primaryColorLight,
                  border: Border.all(
                    width: 2,
                    color: theme.primaryColorDark,
                  ),
                  image: DecorationImage(
                    image: design.previewPath, // NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.design_services, color: theme.primaryColorDark),
                    tooltip: 'Edit',
                    onPressed: () {
                      // Navigate to the edit page when the edit icon is tapped
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return PixelArtEditPage(index: index, theme: theme);
                        },
                      ));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.visibility, color: theme.primaryColorDark),
                    tooltip: 'View',
                    onPressed: () {
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