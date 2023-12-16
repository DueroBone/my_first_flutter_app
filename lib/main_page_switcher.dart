import 'package:flutter/material.dart';

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
            // Navigator.popUntil(context, ModalRoute.withName('/'));
            // pop all routes until you get to the home page
            Navigator.popUntil(context, ModalRoute.withName('/home'));
            // Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          title: const Text('Page 2'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/page2');
          },
        ),
        ListTile(
          title: const Text('Page 3'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/page3');
          },
        ),
        // add a logout button at the bottom
        ListTile(
          title: const Text('Logout'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/logout');
          },
        ),
      ],
    ),
  );
}
