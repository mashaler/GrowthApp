import 'package:flutter/material.dart';

class BibleStudyPage extends StatefulWidget {
  @override
  _BibleStudyPageState createState() => _BibleStudyPageState();
}

class _BibleStudyPageState extends State<BibleStudyPage> {
  final TextEditingController _noteController = TextEditingController();
  String savedNote = '';

  void saveNote() {
    setState(() {
      savedNote = _noteController.text;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Note saved!')),
    );
    _noteController.clear();
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

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
              '📖 John 1:1-5',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'In the beginning was the Word, and the Word was with God, and the Word was God...',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 24),
            TextField(
              controller: _noteController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write your reflection...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              icon: Icon(Icons.save),
              label: Text('Save Note'),
              onPressed: saveNote,
            ),
            if (savedNote.isNotEmpty) ...[
              SizedBox(height: 24),
              Text(
                '📓 Your Saved Note:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(savedNote),
            ],
          ],
        ),
      ),
    );
  }
}
