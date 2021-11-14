import 'package:flutter/material.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Details'),
          onPressed: () => Navigator.pushNamed(context, '/todo/1'),
        ),
      ),
    );
  }
}
