import 'package:flutter/material.dart';
import 'package:pattern_record/data.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (title, modified: modified) = document.metadata; // Modify

    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Modify
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified', // Modify
            ),
          ),
        ],
      ),
    );
  }
}
