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
        title: const Text('L\' AppBar inutile'),
        shadowColor: Colors.purple[800],
        backgroundColor: Colors.pinkAccent[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

        // All ' interno della appBar posso includere le 'actions:' , che accetta una lista di widget
        // nei quali posso andare ad inserire per esempio dei bottoni che al click fanno qualcosa , 
        // in questo esempio aumentano e diminusicono un contatore
        actions: [
          IconButton(onPressed: addValue, icon: const Icon(Icons.add)),
          IconButton(onPressed: removeValue, icon: const Icon(Icons.remove))
        ],
      ),
      body: Center(
        child: Column(
          children: [Text('$value')],
        ),
      ),
    );
  }
}
