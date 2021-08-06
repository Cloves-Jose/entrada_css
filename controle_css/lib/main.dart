import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(
        hintColor: Colors.blueAccent,
        primaryColor: Colors.white,
      ),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final entradaController = TextEditingController();

  void _clearAll() {
    entradaController.text = "";
  }

  void _entradaChange(String text) {
    if (text.isEmpty) {
      _clearAll();
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrada Css'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    fillColor: Colors.blueAccent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              )
            ],
          ),
        ));
  }
}
