import 'package:flutter/material.dart';

class JournalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Journal')),
      body: Center(
        child: Text(
          'Journal entries will appear here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
