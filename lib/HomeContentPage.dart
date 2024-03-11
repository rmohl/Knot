import 'package:flutter/material.dart';
import 'package:knotsense/CreatePatternPage.dart';

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Pattern 1'),
              subtitle: Text('This is a pattern'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.image),
              title: Text('Pattern 2'),
              subtitle: Text('This is a pattern'),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the detail page when the card is tapped
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.purple,
                      iconTheme: const IconThemeData(color: Colors.white),
                      centerTitle: true,
                      title: const Text('Create Pattern', style: TextStyle(color: Colors.white)),
                    ),
                    body: CreatePatternPage(),
                  );
                },
              ));
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.add),
                title: Text('Create'),
                subtitle: Text('Add new pattern'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}