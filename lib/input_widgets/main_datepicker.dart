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
  String _myDate = '';

  // Una Future è un oggetto che rappresenta un valore o un evento che verrà reso disponibile in futuro. 
  // È utilizzato per gestire i risultati asincroni , come ad esempio le richieste di rete o l ' accesso ai file. 
  // Quando si esegue un ' operazione asincrona , viene restituita una Future che può essere utilizzata 
  // per recuperare il risultato una volta che l'operazione è stata completata.
  Future setDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2026));

    // null safety.
    if (picked != null) {
      setState(() {
        _myDate = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Center(
        child: Column(children: [
          Text(_myDate),
          IconButton(
            onPressed: setDate,
            icon: const Icon(
              Icons.date_range,
              color: Colors.pink,
            ),
          )
        ]),
      ),
    );
  }
}
