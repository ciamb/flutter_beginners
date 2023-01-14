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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App con drawer'),
        ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('hello drawer. benvenuto,!'),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Close'))
            ],
          ),
        ),
      ),
    );
  }
}
