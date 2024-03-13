import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:provider/provider.dart';
import 'DesignListProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textBrown = Colors.brown[900];

    return ChangeNotifierProvider(create: (context) => DesignListProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.pink[100],
          primaryColorLight: Colors.pink[50],
          primaryColorDark: Colors.brown[900],
          // Define the text theme for the app
          textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: textBrown), // Custom headline text style with blue color
            displayMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textBrown), // Custom headline text style with green color
            displaySmall: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: textBrown), // Custom headline text style with red color
            headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textBrown), // Custom headline text style with orange color
            headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: textBrown), // Custom headline text style with purple color
            titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textBrown), // Custom headline text style with teal color
            titleMedium: TextStyle(fontSize: 16, color: textBrown, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
            bodyLarge: TextStyle(fontSize: 16, color: textBrown), // Custom body text style with black color
            bodyMedium: TextStyle(fontSize: 14, color: textBrown), // Custom body text style with grey color
            labelSmall: TextStyle(fontSize: 12, color: textBrown), // Custom body text style with grey color
          ),
          scaffoldBackgroundColor: Color(0xECFFFFFF), // Change this color to the desired color
        ),
        title: 'KnotSense App',
        home: const HomePage(),
      ),
    );
  }
}


