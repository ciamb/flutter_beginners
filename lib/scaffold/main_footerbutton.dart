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

  void _onclick(String value) => setState(() {
        this.value = value;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Persistent Footer Button')),

      // persistentFooterButtons , è una proprietà presente nella classe Scaffold in Flutter. 
      // Consente di aggiungere dei pulsanti fissi in fondo alla schermata. 
      persistentFooterButtons: [
        IconButton(
            onPressed: () => _onclick('sole'), 
            icon: const Icon(Icons.sunny)),
        IconButton(
            onPressed: () => _onclick('cuore'),
            icon: const Icon(Icons.cloudy_snowing)),
        IconButton(
            onPressed: () => _onclick('amore'),
            icon: const Icon(Icons.heart_broken_rounded)),
      ],
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[Text(value)]),
      ),
    );
  }
}
