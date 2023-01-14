import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mystring = '';

  void onChange(String inputString) {
    setState(() => mystring = inputString);
  }

  void onSubmit(String inputString) {
    setState(() => mystring = inputString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Finalmente il TextField!!')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(mystring), // Il campo che viene modificato dal mio TextField.

              // Il TextField è un widget che mi permette di far apparire a schermo un campo editabile ( tipo form ) ,
              // e che al focus apre una tastiera , di cui il tipo può essere impostato tramite il campo "keyboardType: ".
              // A questo widget posso anche passare ai campi onChanged e onSubmit dei metodi , che salveranno o invieranno il mio input.
              TextField(
                decoration: const InputDecoration(
                  hintText: 'questo è l hint',
                  labelText: 'inserisci una frase',
                  icon: Icon(Icons.people),
                ),
                autocorrect: true,
                keyboardType: TextInputType.text,
                onChanged: onChange,
                onSubmitted: onSubmit,
              )
            ],
          ),
        ),
      ),
    );
  }
}
