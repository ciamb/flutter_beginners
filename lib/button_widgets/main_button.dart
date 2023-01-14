import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    // sto dicendi al mio main di runnare una MaterialApp
    home:
        MyApp(), // sto dicendo che la mia home all ' apertura sarà una nuova istanza di MyApp
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _mycounter = 0;
  String _mystring = '';

  void resetCounter() {
    setState(() {
      _mycounter = 0;
    });
  }

  void addCounter() {
    setState(() {
      _mycounter++;
    });
  }

  void subtractCounter() {
    setState(() {
      _mycounter--;
    });
  }

  void showDate() {
    setState(() {
      _mystring = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Template')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[



          // primo tipo di bottone (ElevatedButton)
          ElevatedButton( 
            onPressed: resetCounter,
            child: Text('$_mycounter'),
          ),



          // secondo tipo di bottone (FloatingActionButton)
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: showDate,
            child: const Text('show date'),
          ),
          Text(_mystring),
          Container(
            padding: const EdgeInsets.all(30.0),
          ),


          // terzo tipo di bottone (IconButton)
          IconButton(
            onPressed: addCounter, 
            icon: const Icon(Icons.add)),
          IconButton(
            onPressed: subtractCounter, 
            icon: const Icon(Icons.remove))


            
        ]),
      ),
    );
  }
}
