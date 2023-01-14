import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp>{
  bool value1 = false;
  bool value2 = false;

  void changeValue1(bool? value) {
    setState(() {

      // null safety , argomento importantissimo che riguarda gli ultimi aggiornamenti di Flutter.
      // Controllo se il valore è diverso da null , se è diverso mi setta il valore con quello di input ,
      // se è null me lo setta false , quindi non potrà mai essere null anche se il valore in ingresso
      // potrebbe arrivare nullo perché ha il safe operator.
      value1 = value != null ? value1 = value : false;
    });
  }
  void changeValue2(bool? value) => setState(() {

    // Altro modo di scrivere la null safety.
    value2 = value!; 
  });  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Checkbox!'),),
      body: Column(
        children: [
          const Text('Qui sotto i due diversi tipi checkbox.'),
          const Text('Checkbox semplice.'),
          Checkbox(
            value: value1, 
            onChanged: changeValue1),
            const Text('CheckboxListTile.'),
          CheckboxListTile(
            value: value2, 
            onChanged: changeValue2,
            activeColor: Colors.brown[400],
            title: const Text('Questo è il checkbox tile'),
            subtitle: const Text('Questo è il sottotitolo del checkbox tile'),
            secondary: const Icon(Icons.sunny),
            controlAffinity: ListTileControlAffinity.leading,
        )],
      ),
    );
  }

}