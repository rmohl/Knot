import 'package:flutter/material.dart';
import 'package:knotsense/PixelArtPage.dart';

class CreatePatternPage extends StatelessWidget {
  final ThemeData theme;

  CreatePatternPage({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                  'Design Method:',
                  style: theme.textTheme.headlineSmall
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the detail page when the card is tapped
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return PixelArtPage(theme: theme, index: -1);
                },
              ));
            },
            child: Card(
              child: ListTile(
                title: Text('Pixel Art'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}