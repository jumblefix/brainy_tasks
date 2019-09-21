import 'package:brainy_tasks/widgets/FancyButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: FancyButton(
          child: Text('Welcome'),
          color: Colors.deepOrange,
          size: 20,
          onPressed: () {
            print('Hello');
          },
        ),
      ),
    );
  }
}
