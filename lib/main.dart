import 'package:flutter/material.dart';
import 'screens/devotionals_page.dart';
import 'screens/journal_page.dart';
import 'screens/bible_study_page.dart';


void main() {
  runApp(ChosenOneApp());
}

class ChosenOneApp extends StatefulWidget {
  @override
  State<ChosenOneApp> createState() => _ChosenOneAppState();
}

class _ChosenOneAppState extends State<ChosenOneApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChosenOne',
      theme: isDark
      ? ThemeData.dark()
      : ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      debugShowCheckedModeBanner: false,
      home: HomePage(
        toggleTheme: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const HomePage({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChosenOne'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: toggleTheme,
          )
        ],
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
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => DevotionalsPage()));
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
             SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.book),
              label: Text('Bible Study'),
              onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => BibleStudyPage()));
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.edit_note),
              label: Text('My Journal'),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => JournalPage()));
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
          ],
        ),
      ),
    );
  }
}
