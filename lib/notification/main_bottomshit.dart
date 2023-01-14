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

  void showBottom() {
    showModalBottomSheet<void>(
      context: context, 
      // il builder è g
      builder: (BuildContext context) { 
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('questo è il pannello botto', style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('close'))
            ],
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Modal')),
      body: Center(
        child: Column(children: [
          const Text('hit me to try the modal'),
          ElevatedButton(onPressed: showBottom, child: const Text('X'))
        ]),
      ),
    );
  }
}
