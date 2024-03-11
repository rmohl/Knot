import 'package:flutter/material.dart';

class CreatePatternPage extends StatelessWidget {
  const CreatePatternPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                  'Design Method:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Normal Pattern'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Pixel Art'),
            ),
          ),
        ],
      ),
    );
  }
}