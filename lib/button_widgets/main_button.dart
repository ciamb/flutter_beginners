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
  int _mycounter = 0; // Inizializzo una variabile di tipo int ( intero ).
  String _mystring =
      ''; // Inizializzo una variabile di tipo String ( stringa ).

  // Un metodo che resetta il mio counter , riportando il valore a 0.
  void resetCounter() {
    setState(() {
      _mycounter = 0;
    });
  }

  // Un metodo che aumenta il valore del mio counter di 1.
  void addCounter() {
    setState(() {
      _mycounter++;
    });
  }

  // Un metodo che diminuisce il valore del mio counter di 1.
  void subtractCounter() {
    setState(() {
      _mycounter--;
    });
  }

  // Un metodo che setta la mia stringa alla data di oggi.
  void showDate() {
    setState(() {
      _mystring = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'I 3 principali Bottoni!',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          
          // Primo tipo di bottone ( ElevatedButton ).
          ElevatedButton(
            onPressed: resetCounter,
            child: Text('$_mycounter'),
          ),

          // Secondo tipo di bottone ( FloatingActionButton ).
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: showDate,
            child: const Text('show date'),
          ),
          Text(_mystring),
          Container(
            padding: const EdgeInsets.all(30.0),
          ),

          // Terzo tipo di bottone ( IconButton ).
          IconButton(onPressed: addCounter, icon: const Icon(Icons.add)),
          IconButton(onPressed: subtractCounter, icon: const Icon(Icons.remove))
        ]),
      ),
    );
  }
}
