import 'package:flutter/material.dart';
import 'HomePage.dart';

getMenu(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 30),),
        ),
        ListTile(
          title: const Text('My Bracelets'),
          leading: IconButton(
            icon: Icon(Icons.list, color: Colors.black),
            onPressed: null,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ],
    ),
  );
}