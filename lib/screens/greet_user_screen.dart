import 'package:flutter/material.dart';
import 'enter_age_screen.dart';

class GreetUserScreen extends StatelessWidget {
  final String name;
  GreetUserScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Приветствие')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: Center(
                child: Text('Привет, $name!'),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EnterAgeScreen(name: name),
                  ),
                );
              },
              child: Text('Далее'),
            ),
          ],
        ),
      ),
    );
  }
}