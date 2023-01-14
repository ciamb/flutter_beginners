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
  double value = 0.0;

  setValue(double value) {
    setState(() {
      this.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lo Slider!'),
      ),
      body: Center(
        child: Column(children: [
          
          // Lo Slider è un widget che permette tramite un cursore di selezionare un valore
          // in un dato range ( es: da 1 a 100 ).
          Text('${(value * 100).round()}'),
          Slider(
            value: value,
            onChanged: setValue,
            thumbColor: Colors.pink[300],
            activeColor: Colors.pink[100],
          ),
        ]),
      ),
    );
  }
}
