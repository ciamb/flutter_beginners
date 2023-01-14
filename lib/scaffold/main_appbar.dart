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
  int value = 0;

  void addValue() => setState(() {
        value++;
      });

  void removeValue() => setState(() {
        value--;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template'),
        shadowColor: Colors.purple[800],
        backgroundColor: Colors.pinkAccent[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        actions: [
          IconButton(onPressed: addValue, icon: const Icon(Icons.add)),
          IconButton(onPressed: removeValue, icon: const Icon(Icons.remove))
        ],),
      body: Center(
        child: Column(
          children: [
            Text('$value')
          ],
        ),
      ),
    );
  }
}
