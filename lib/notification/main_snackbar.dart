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

  final snackbar = const SnackBar(content: Text('Tonno spiaggiato chi legge lol'));

  // E' lo ScaffoldMessanger che si occupa di mostrare la snackbar.
  void showbar() => ScaffoldMessenger.of(context).showSnackBar(snackbar); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('La SnackBar.')),
      body: Center(
        child: Column(children: [
          const Text('clicca qui per vedere la clamorosa SnackBar.'),
          ElevatedButton(onPressed: showbar, child: const Text('X'))
        ]),
      ),
    );
  }
}
