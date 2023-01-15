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
  String mystring = '';
  int index = 0;
  List<BottomNavigationBarItem> list = [];

  // L ' initState() viene richiamato al momento della PRIMA inizializzazione dell ' app.
  @override
  void initState() {
    super.initState();
    list.add(const BottomNavigationBarItem(
      icon: Icon(Icons.sunny), label: 'sole'));
    list.add(const BottomNavigationBarItem(
        icon: Icon(Icons.cloud), label: 'nuvola'));
    list.add(const BottomNavigationBarItem(
        icon: Icon(Icons.ramen_dining), label: 'vamavvo'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('La Bottom Navigation Bar')),
      body: Center(
        child: Column(children: [Text(mystring)]),
      ),

      // bottomNavigationBar è un widget che viene utilizzato per creare una barra di navigazione in fondo alla schermata. 
      // È possibile utilizzare questa barra per navigare tra diverse sezioni dell'app.
      bottomNavigationBar: BottomNavigationBar(
        items: list,
        fixedColor: Colors.pinkAccent,
        currentIndex: index,
        onTap: (int item) => setState(() {
          index = item;
          mystring = 'Current value is ${index.toString()}';
        }),
      ),
    );
  }
}
