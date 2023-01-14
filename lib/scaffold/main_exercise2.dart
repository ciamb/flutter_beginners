//Add a Drawer, in the Drawer add a button, when the button is clicked it should
//update a Text widget on the main page with the current date and time

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
  String mystring = '';

  void setMystring() => setState(() {
        mystring = DateTime.now().toString();
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Template')),
      drawer: Drawer(
        child: IconButton(icon: const Icon(Icons.date_range), onPressed: setMystring),
      ),
      body: Center(
        child: Column(
          children: [
            Text(mystring)
          ],
        ),
      ),
    );
  }
}
