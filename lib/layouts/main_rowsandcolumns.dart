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

// come faccio a posizionare dove voglio i miei widget all' interno del mio applicativo?

class _MyApp extends State<MyApp> {
  TextEditingController userInsert = TextEditingController();
  TextEditingController passwordInsert = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Template')),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          const Text('please login'),
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
              const Text('password: '),
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
