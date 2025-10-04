import 'package:flutter/material.dart';
import 'screens/enter_name_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Registration',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: EnterNameScreen(),
    );
  }
}
