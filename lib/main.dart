import 'package:flutter/material.dart';
import 'screens/devotionals_page.dart';
import 'screens/journal_page.dart';

void main() {
  runApp(ChosenOneApp());
}

class ChosenOneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChosenOne',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/devotionals': (context) => DevotionalsPage(),
        '/journal': (context) => JournalPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChosenOne'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, Chosen One 👑',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              icon: Icon(Icons.sunny),
              label: Text('Daily Devotionals'),
              onPressed: () {
                Navigator.pushNamed(context, '/devotionals');
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.book),
              label: Text('Bible Study'),
              onPressed: () {
                // You can later add this route too
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.edit_note),
              label: Text('My Journal'),
              onPressed: () {
                Navigator.pushNamed(context, '/journal');
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
          ],
        ),
      ),
    );
  }
}
