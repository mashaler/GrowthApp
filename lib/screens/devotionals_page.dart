import 'package:flutter/material.dart';

class DevotionalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Devotionals')),
      body: Center(
        child: Text(
          'This is where your daily devotionals will go.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
