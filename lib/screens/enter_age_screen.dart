import 'package:flutter/material.dart';
import 'user_summary_screen.dart';

class EnterAgeScreen extends StatefulWidget {
  final String name;
  EnterAgeScreen({required this.name});

  @override
  _EnterAgeScreenState createState() => _EnterAgeScreenState();
}

class _EnterAgeScreenState extends State<EnterAgeScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Введите возраст')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Сколько тебе лет?'),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => UserSummaryScreen(
                        name: widget.name,
                        age: _controller.text,
                      ),
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
