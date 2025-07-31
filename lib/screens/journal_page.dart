import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final _controller = TextEditingController();
  List<String> journalEntries = [];

  void _saveEntry() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        journalEntries.insert(0, text); // Latest on top
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Journal')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Write your thoughts, prayers, or reflections...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              icon: Icon(Icons.save),
              label: Text('Save Entry'),
              onPressed: _saveEntry,
            ),
            SizedBox(height: 20),
            Expanded(
              child: journalEntries.isEmpty
                  ? Center(child: Text('No journal entries yet.'))
                  : ListView.builder(
                      itemCount: journalEntries.length,
                      itemBuilder: (context, index) => Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(journalEntries[index]),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
