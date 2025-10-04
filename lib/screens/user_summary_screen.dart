import 'package:flutter/material.dart';
import 'thank_you_screen.dart';

class UserSummaryScreen extends StatelessWidget {
  final String name;
  final String age;
  UserSummaryScreen({required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Информация о пользователе')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Созданный пользователь:'),
                    Text('Имя: $name'),
                    Text('Возраст: $age'),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ThankYouScreen()),
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