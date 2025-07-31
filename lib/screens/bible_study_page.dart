import 'package:flutter/material.dart';

class BibleStudyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bible Study'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Today\'s Study:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '📖 *John 1:1-5*\n\n'
              'In the beginning was the Word, and the Word was with God, and the Word was God...\n\n'
              'Reflect on the eternal nature of Jesus and how the Word brings light to all mankind.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.note),
              label: Text('Add Notes'),
              onPressed: () {
                // TODO: Add note input feature
              },
            ),
          ],
        ),
      ),
    );
  }
}
