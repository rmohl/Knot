import 'package:flutter/material.dart';
import 'package:knotsense/CreatePatternPage.dart';
import 'package:knotsense/HomeContentPage.dart';
import 'package:knotsense/InstructionsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = "KNOTSENSE";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Go to the settings page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.purple,
                      iconTheme: const IconThemeData(color: Colors.white),
                      centerTitle: true,
                      title: const Text('Settings page', style: TextStyle(color: Colors.white)),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the settings page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.add_circle),
            icon: Icon(Icons.add_circle_outline),
            label: 'New Pattern',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.help),
            icon: Icon(Icons.help_outline),
            label: 'Instructions',
          ),
        ],
      ),
      body: <Widget>[
        /// New Pattern page
        CreatePatternPage(),

        /// Home page
        HomeContentPage(),

        /// Instructions page
        InstructionsPage(theme: theme),
      ][currentPageIndex],
    );
  }
}