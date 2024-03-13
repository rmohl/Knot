import 'package:flutter/material.dart';
import 'package:knotsense/CreatePatternPage.dart';
import 'package:knotsense/PatternCard.dart';
import 'package:provider/provider.dart';

import 'DesignListProvider.dart';

class HomeContentPage extends StatelessWidget {
  final ThemeData theme;

  HomeContentPage({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    final designListProvider = Provider.of<DesignListProvider>(context);

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                  'My Designs:',
                  style: theme.textTheme.headlineSmall
              ),
            ),
          ),
          // Pattern Cards for each design
          ...designListProvider.list.map((design) => PatternCard(design: design, theme: theme)),
          GestureDetector(
            onTap: () {
              // Navigate to the detail page when the card is tapped
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: theme.primaryColor,
                      iconTheme: IconThemeData(color: theme.primaryColorDark),
                      centerTitle: true,
                      title: Text('Create Pattern', style: theme.textTheme.displaySmall),
                    ),
                    body: CreatePatternPage(theme: theme),
                  );
                },
              ));
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.add, color: theme.primaryColorDark),
                title: Text('Create', style: theme.textTheme.bodyLarge),
                subtitle: Text('Add new pattern', style: theme.textTheme.bodyMedium),
              ),
            ),
          ),
        ],
      ),
    );
  }
}