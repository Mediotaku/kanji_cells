import 'package:flutter/material.dart';
import 'package:kanji_cells/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Kanji Cells',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
