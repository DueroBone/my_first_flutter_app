import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/Pages/unknown_page.dart';
import 'package:my_first_flutter_app/Pages/home.dart';
import 'package:my_first_flutter_app/Pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // upon startup go to the home page


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 255, 100),
            brightness: Brightness.light),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 56, 24),
            background: const Color.fromARGB(255, 0, 0, 0),
            brightness: Brightness.dark),
        useMaterial3: true,
      ),
      routes: {
        '/home': (context) => const MyHomePage(),
        '/page2': (context) => Page2(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => UnknownPage(name: settings.name));
      },
      initialRoute: '/home',
    );
  }
}
