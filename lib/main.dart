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
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          String title = newsList[index]['title'] ?? ''; 
          return ListTile(
            title: Text(title),
          );
        },
      ),
    );
  }
}

List<Map<String, String>> newsList = [
  {'title': 'ニュースの記事1'},
  {'title': 'ニュースの記事2'},
  {'title': 'ニュースの記事3'},
];
