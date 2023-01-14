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
  bool value1 = false;
  bool value2 = false;

  void changeValue(bool value) {
    setState(() {
      value1 = value;
      print(value);
    });
  }

  void changeValue2(bool value) {
    setState(() {
      value2 = value;
    });
  }

  Widget makeChangeToSubtitle(bool value) {
    if (value) {
      return const Text('Sono VERO :D');
    }
    return const Text('Sono FALSO :(');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottone Switch'),
      ),
      body: Center(
        child: Column(
          children: [
            // Solamente il bottone dello switch.
            Switch(value: value1, onChanged: changeValue),

            // Campo cliccabile con lo swicth.
            SwitchListTile(
              value: value2,
              onChanged: changeValue2,
              title: const Text('Guarda il sottotitolo cambiare!'),
              controlAffinity: ListTileControlAffinity.platform,
              subtitle: makeChangeToSubtitle(value2),
            )
          ],
        ),
      ),
    );
  }
}
