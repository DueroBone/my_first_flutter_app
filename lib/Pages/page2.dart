import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main_page_switcher.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: hamburger(context),
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Page 2', style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}