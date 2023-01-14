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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Template')),
        body: Center(
          child: Column(
            children: [
              const Text('La mia ciambella expanded'),

              // Expanded() non fa altro che rendere adattabile ciò che contiene al suo contenitore,
              // in questo esempio, l'immagine della ciambella si adatta se si ruota lo schermo o si 
              // diminuisce la grandezza della finestra!
              Expanded(child: Image.asset('asset/img/ciambella.jpg'))
              
            ],
          ),
        ));
  }
}
