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
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('zio cane devi risponne'),
            children: [
              SimpleDialogOption(
                child: const Text('SI'),
                onPressed: () => Navigator.pop(context, Answer.yes),
              ),
              SimpleDialogOption(
                child: const Text('no'),
                onPressed: () => Navigator.pop(context, Answer.no),
              ),
              SimpleDialogOption(
                child: const Text('sdiocane'),
                onPressed: () => Navigator.pop(context, Answer.maybe),
              ),
            ],
          );
        })) {
      case Answer.yes:
        setString('Proprio si');
        break;
      case Answer.no:
        setString('enno');
        break;
      case Answer.maybe:
        setString('forse forse');
        break;
      default:
        setString('hai sbagliato qualcosa');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Template')),
      body: Center(
        child: Column(children: [
          ElevatedButton(onPressed: askuser, child: const Text('hittamio dio cancar')),
          Text(mystring)
        ]),
      ),
    );
  }
}
