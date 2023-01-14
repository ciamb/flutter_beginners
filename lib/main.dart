import 'package:flutter/material.dart';

// Sto dicendo al mio main di runnare un widget ( in questo caso un MaterialApp ) 
// e di mostrarmi come home all ' apertura una nuova istanza di MyApp ( a sua volta un widget ).
void main() {
  runApp(const MaterialApp(
    home:MyApp(), 
  ));
}

// La mia classe estende StatefulWidget e cioè specifica che è un widget che tiene conto dello STATE
// dei suoi widget interni , quindi sarà sempre 'pronto a interagire' con essi.
class MyApp extends StatefulWidget {

  const MyApp({super.key}); // Costruttore.
  @override
  State<MyApp> createState() => _MyApp(); // Crea un'istanza di _MyApp.
}

// La classe che poi effettivamente va a 'costruire' l'app, il metodo build(...) viene
// richiamato molteplici volte durante la vita del widget (es: nell ' initState , dopo una chiamata setState, ecc..).
class _MyApp extends State<MyApp> {

  // BuildContext rappresenta il contesto in cui il widget viene costruito.
  @override
  Widget build(BuildContext context) {
    // Lo Scaffold è un widget base di Flutter che fornisce un layout di base per il nostro applicativo ( appBar: , body: , ecc.. ).
    return Scaffold(  
      appBar: AppBar(title: const Text('Applicazione di partenza')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: const <Widget>[
          // Qui andranno i vari widget figli,
        ]),
      ),
    );
  }
}
