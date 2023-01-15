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
      appBar: AppBar(title: const Text('Le Cards *.*')),
      body: Center(
        child: Column(children: [
          Card(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: const [
                    Text('Carta.'),
                    Text('Uno.'),
                  ],
                )),
          ),
          Card(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: const [
                    Text('Carta.'),
                    Text('Due.'),
                  ],
                )),
          ),
          Card(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: const [
                    Text('Carta.'),
                    Text('Tre.'),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
