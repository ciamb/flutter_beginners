import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  String value = '';

  void setValue() => setState(() {
        value = DateTime.now().toString();
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating action button'),),
      floatingActionButton: FloatingActionButton(
        onPressed: setValue,
        mini: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 12.0,
        hoverColor: Colors.purple,
        child: const Icon(Icons.date_range), 
      ),
      body: Center(
        child: Column(children: [Text(value)]),
      ),
    );
  }
}
