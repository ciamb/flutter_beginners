import 'package:flutter/material.dart';
import 'dart:async';

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
  Future showalert(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('scemo chi legge 2'), 
            actions: [
            FloatingActionButton(
              onPressed: () => Navigator.pop(context),
              mini: true,
              ),
          ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Template')),
      body: Center(
        child: Column(children: [
          const Text('qui sotto puo lanciare il tuo dialog'),
          ElevatedButton(onPressed: () => showalert(context), child: const Text('hit me'),)
        ]),
      ),
    );
  }
}
