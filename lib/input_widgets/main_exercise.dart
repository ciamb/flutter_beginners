import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  bool showText = false;
  String _myString = '';

  void setValue() {
    setState(() {
      if (showText == false) {
        showText = true;
      } else {
        showText = false;
      }
    });
  }

  void onSubmit(String inputString) {
    setState(() {
      _myString = inputString;
    });
  }

  void onChange(String inputString) {
    setState(() {
      _myString = inputString;
    });
  }

  Widget showTextWidget() {
    Text secretText = Text(_myString);
    if (showText == true) {
      return secretText;
    }
    return const Text('nessun testo segreto');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
                hintText: 'Inserisci qui il tuo testo segreto',
                labelText: 'questo è il laberl',
                icon: Icon(Icons.downhill_skiing)),
            autocorrect: true,
            keyboardType: TextInputType.text,
            onSubmitted: onSubmit,
            onChanged: onChange,
          ),
          ElevatedButton(
            onPressed: setValue,
            child: const Text('clicca qui se devi vedere il testo segreto'),
          ),
          showTextWidget()
        ],
      ),
    ));
  }
}
