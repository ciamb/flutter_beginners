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
  int value1 = 0;
  int value2 = 0;

  void changeValue1(int? value) {
    setState(() {
      value1 = value!;
    });
  }

  void changeValue2(int? value) {
    setState(() {
      value2 = value!;
    });
  }

  Widget makeRadios() {
    List<Widget> listRadio = [];

    for (int i = 0; i < 3; i++) {
      listRadio
          .add(Radio(value: i, groupValue: value1, onChanged: changeValue1));
    }
    Column column = Column(children: listRadio);
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> listRadio = [];

    for (int i = 0; i < 3; i++) {
      listRadio.add(RadioListTile(
        value: i,
        groupValue: value2,
        onChanged: changeValue2,
        activeColor: Colors.pinkAccent[300],
        controlAffinity: ListTileControlAffinity.platform,
        title: Text('$i'),
        subtitle: const Text('Questo è il sottotitolo'),
      ));
    }
    Column column = Column(children: listRadio);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          makeRadios(),
          makeRadioTiles()
        ],
      )),
    );
  }
}
