import 'package:flutter/material.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsListScreen(),
    );
  }
}

class NewsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ニュースの記事一覧'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: newsList.map((item) {
            String title = item['title'] ?? '';
            return ListTile(
              title: Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 60), 
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

List<Map<String, String>> newsList = [
  {'title': 'ニュースの記事1'},
  {'title': 'ニュースの記事2'},
  {'title': 'ニュースの記事3'},
];
