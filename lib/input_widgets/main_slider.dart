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
        title: const Text('Slider'),
      ),
      body: Center(
        child: Column(children: [
          Text('${(value * 100).round()}'),
          Slider(value: value, onChanged: setValue,thumbColor: Colors.pink[300], activeColor: Colors.pink[100],),
        ]),
      ),
    );
  }
}
