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
      // null safety, argomento importantissimo che riguarda gli ultimi aggiornamenti di flutter
      value1 = value != null ? value1 = value : false;
    });
  }
  void changeValue2(bool? value) => setState(() {
    // altro modo di scrivere la null safety
    value2 = value!; 
  });  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('checkbox'),),
      body: Column(
        children: [
          const Text('Qui sotto i due diversi checkbox'),
          Checkbox(
            value: value1, 
            onChanged: changeValue1),
          CheckboxListTile(
            value: value2, 
            onChanged: changeValue2,
            activeColor: Colors.brown[400],
            title: const Text('questo è il checkbox del value 2'),
            subtitle: const Text('Un piccolo sottotitolo'),
            secondary: const Icon(Icons.chair_sharp),
            controlAffinity: ListTileControlAffinity.leading,
        )],
      ),
    );
  }

}