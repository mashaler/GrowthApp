import 'package:flutter/material.dart';

class DevotionalsPage extends StatelessWidget {
  final List<Map<String, String>> devotionals = [
    {
      'title': 'You Are Chosen',
      'verse': 'John 15:16',
      'content':
          'You did not choose me, but I chose you and appointed you so that you might go and bear fruit. Today, walk in the confidence that you are handpicked by God.'
    },
    {
      'title': 'Walking in Light',
      'verse': '1 John 1:7',
      'content':
          'If we walk in the light, as He is in the light, we have fellowship with one another. Let your life shine with truth and grace today.'
    },
    {
      'title': 'Strength for Today',
      'verse': 'Isaiah 40:31',
      'content':
          'Those who wait on the Lord shall renew their strength. Trust that God will empower you today, even when you feel weary.'
    },
    // You can keep adding more devotionals here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Devotionals')),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: devotionals.length,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          final devotional = devotionals[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    devotional['title']!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  SizedBox(height: 8),
                  Text(
                    devotional['verse']!,
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 12),
                  Text(
                    devotional['content']!,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
