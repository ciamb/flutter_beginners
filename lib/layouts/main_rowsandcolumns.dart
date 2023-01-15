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

// Come faccio a posizionare dove voglio i miei widget all' interno del mio applicativo ?
// Utilizzo i vari widget 'strutturali' a mia disposizione , come per esempio le 
// Row(children: []) e le Column(children: []).

class _MyApp extends State<MyApp> {
  TextEditingController userInsert = TextEditingController();
  TextEditingController passwordInsert = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rows & Column finalmente!')),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          const Text('Per favore, fai la login!'),
          Row(
            children: [
              const Text('Username: '),
              Expanded(
                child: TextField(
                  controller: userInsert,
                  autocorrect: true,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Password: '),
              Expanded(
                child: TextField(
                  controller: passwordInsert,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () => print('Login ${userInsert.text}'),
                child: const Text('PRINT')),
          )
        ]),
      ),
    );
  }
}
