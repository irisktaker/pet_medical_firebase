import 'package:flutter/material.dart';
import 'view/screens/home_list.dart';

Future<void> main() async {
  // TODO Initialize the Firebase App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeList());
  }
}
