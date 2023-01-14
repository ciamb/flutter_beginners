// allow the user to enter their name , and when a button is clicked, display a snackbar with their name

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
  void setMystring(String input) => setState(() => mystring = input);

  get snackbar => SnackBar(content: Text(mystring));
  void showbar() => ScaffoldMessenger.of(context).showSnackBar(snackbar); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Esercizio 3')),
      body: Center(
        child: Column(children: [
          TextField(
            keyboardType: TextInputType.text,
            autocorrect: true,
            controller: TextEditingController(),
            onSubmitted: setMystring,
          ),
          ElevatedButton(
            onPressed: showbar, 
            child: const Text('hit me harder')
          )
        ]),
      ),
    );
  }
}
