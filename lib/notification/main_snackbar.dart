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
  final snackbar = const SnackBar(content: Text('scemo chi legge'));
  void showbar() => ScaffoldMessenger.of(context).showSnackBar(snackbar); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Template')),
      body: Center(
        child: Column(children: [
          const Text('clicca qui per vedere la snack bar'),
          ElevatedButton(onPressed: showbar, child: const Text('Hit me'))
        ]),
      ),
    );
  }
}
