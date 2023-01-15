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
    
    // Questo metodo restituisce un widget come se fosse una modale , mostrato dal fondo della pagina
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Il fantastico modalBottomSheet',
                  style: TextStyle(
                      color: Colors.pinkAccent, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('close'))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('La funzione showModalBottomSheet!! S:')),
      body: Center(
        child: Column(children: [
          const Text('Cliccami forte per mostrare la modale!'),
          ElevatedButton(onPressed: showBottom, child: const Text('X'))
        ]),
      ),
    );
  }
}
