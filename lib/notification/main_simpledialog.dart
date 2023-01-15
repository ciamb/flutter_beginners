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

enum Answer { yes, no, maybe }

class _MyApp extends State<MyApp> {
  String mystring = '';

  void setString(String input) => setState(() => mystring = input);

  Future askuser() async {

    // La funzione showDialog() che ritorna un SimpleDialog  non fa altro che mostrare a schermo una finestra
    // a comparsa con delle scelte per l'utente.
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Come stai oggi?'),
            children: [
              SimpleDialogOption(
                child: const Text('Solare :)'),
                onPressed: () => Navigator.pop(context, Answer.yes),
              ),
              SimpleDialogOption(
                child: const Text('Un po\' giù.'),
                onPressed: () => Navigator.pop(context, Answer.no),
              ),
              SimpleDialogOption(
                child: const Text('Voglio morire.'),
                onPressed: () => Navigator.pop(context, Answer.maybe),
              ),
            ],
          );
        })) {
      case Answer.yes:
        setString('Dajeee :D');
        break;
      case Answer.no:
        setString('Mi dispiace, posso fare qualcosa?');
        break;
      case Answer.maybe:
        setString('Accanna, meglio domani.');
        break;
      default:
        setString('Non hai capito come funziona...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Dialog, insomma.')),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: askuser, child: const Text('X')),
          Text(mystring)
        ]),
      ),
    );
  }
}
