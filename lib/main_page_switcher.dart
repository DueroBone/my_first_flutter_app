import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/Pages/UnknownPage.dart';
import 'package:my_first_flutter_app/Pages/page2.dart';

import 'Pages/home.dart';

Widget hamburger(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: const Text(
            'Main Menu:',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            // Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
        ListTile(
          title: const Text('Page 2'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page2()));
          },
        ),
        ListTile(
          title: const Text('Page 3'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UnknownPage()));
          },
        ),
        // add a logout button at the bottom
        ListTile(
          title: const Text('Logout'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UnknownPage()));
          },
        ),
      ],
    ),
  );
}
