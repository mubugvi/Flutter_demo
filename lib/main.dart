import 'package:flutter/material.dart';
import 'screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        home: FirstScreen());
  }
}
