import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        backgroundColor: theme.primaryColor,
        iconTheme: IconThemeData(color: theme.primaryColorDark),
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(width: 60),
            Image.asset(
              'assets/knot_brown.png',
              width: 50, // Set width of the image
              height: 35, // Set height of the image
            ),
            SizedBox(width: 8), // Adjust spacing between the image and text
            Text(
              widget.title,
              style: theme.textTheme.displaySmall,
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Go to the settings page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: theme.primaryColor,
                      iconTheme: IconThemeData(color: Theme.of(context).primaryColorDark),
                      centerTitle: true,
                      title: Text('Settings page', style: theme.textTheme.displaySmall),
                    ),
                    body: Center(
                      child: Text(
                        'This is the settings page',
                        style: theme.textTheme.headlineMedium,
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
          HapticFeedback.selectionClick();
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: theme.primaryColorLight,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.add_circle, color: theme.primaryColorDark),
            icon: Icon(Icons.add_circle_outline, color: theme.primaryColorDark),
            label: 'New Pattern',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: theme.primaryColorDark),
            icon: Icon(Icons.home_outlined, color: theme.primaryColorDark),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.help, color: theme.primaryColorDark),
            icon: Icon(Icons.help_outline, color: theme.primaryColorDark),
            label: 'Instructions',
          ),
        ],
      ),
      body: <Widget>[
        /// New Pattern page
        CreatePatternPage(theme: theme),

        /// Home page
        HomeContentPage(theme: theme),

        /// Instructions page
        InstructionsPage(theme: theme),
      ][currentPageIndex],
    );
  }
}