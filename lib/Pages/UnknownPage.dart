import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main_page_switcher.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({
    super.key,
  });

  @override
  State<UnknownPage> createState() => _unknown_page();
}

class _unknown_page extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text('Page not found'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text(
          '404',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
