import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  Map countries = {};

  void getCountries() async {
    var uri = 'http://country.io/names.json';
    var url = Uri.parse(uri);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() => countries = jsonDecode(response.body));
      // ignore: avoid_print
      print('Loaded: ${countries.length}');
    }
  }

  @override
  void initState() {
    getCountries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder()')),
      body: Center(
        child: Column(children: [
          const Text(
            'Lista dei Paesi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Expanded(
              child: countries.isNotEmpty
                  ? ListView.builder(
                      itemCount: countries.length,
                      itemBuilder: (BuildContext context, int index) {
                        String key = countries.keys.toList()[index];
                        return ListTile(
                          title: Text(key),
                          subtitle: Text('${countries[key]}'),
                        );
                      })
                  : const CircularProgressIndicator())
        ]),
      ),
    );
  }
}
