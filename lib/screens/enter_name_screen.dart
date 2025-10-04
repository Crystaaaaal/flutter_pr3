import 'package:flutter/material.dart';
import 'greet_user_screen.dart';

class EnterNameScreen extends StatefulWidget {
  @override
  _EnterNameScreenState createState() => _EnterNameScreenState();
}

class _EnterNameScreenState extends State<EnterNameScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Введите имя')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Как тебя зовут?'),
            TextField(controller: _controller),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => GreetUserScreen(name: _controller.text),
                    ),
                  );
                }
              },
              child: Text('Далее'),
            ),
          ],
        ),
      ),
    );
  }
}
