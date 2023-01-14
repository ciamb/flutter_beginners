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

  // Questa funzione ha come tipo di ritorno un Widget , quindi significa che potrà
  // essere inserita in un parametro 'child:' come un qualsiasi altro widget.
  Widget makeRadios() {

    // Mi istanzio una lista di widget, inizializzando a vuota.
    List<Widget> listRadio = [];

    // Tramite un ciclo for riempio la mia lista di widget con widget di tipo Radio.
    for (int i = 0; i < 3; i++) {
      listRadio
          .add(Radio(value: i, groupValue: value1, onChanged: changeValue1));
    }

    // Inserisco la mia lista di widget contenuti ora all ' interno della variabile listRadio
    // all ' interno di un widget Column ( che li dispone in verticale ).
    Column column = Column(children: listRadio);

    // Ritorno la mia column ( che contiene la mia lista , che contiene i miei Radio ).
    return column;
  }

  // Segue la stessa logica della funzione sopra , ma al posto di generare dei singolo radio button
  // genera dei tile di radio button ( campi selezionabili per intero invece che cliccando il singolo bottone ).
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
      appBar: AppBar(title: const Text('I RadioButton!!'),),
      body: Center(
          child: Column(
        children: [makeRadios(), makeRadioTiles()],
      )),
    );
  }
}
