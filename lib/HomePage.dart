import 'package:flutter/material.dart';
import 'Menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = "My Bracelets";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      drawer: getMenu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'bracelets r cool',
            ),
          ],
        ),
      ),
    );
  }
}