import 'package:flutter/material.dart';

class UnknownPage extends StatefulWidget {
  final String title;
  const UnknownPage({
    super.key,
    String? name,
  }) : title = name ?? 'Unknown Page';
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
      body: Center(
        child: Column(
          children: [
            Text('Page not found: ${widget.title}'),
            const Text(
              '404',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
