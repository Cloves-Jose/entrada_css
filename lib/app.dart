import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController _entradaController = TextEditingController();

  Widget _inputText() {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      maxLength: 10,
      obscureText: true,
      obscuringCharacter: '•',
      controller: _entradaController,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
  }

  Widget _logoImage() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projeto Css'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              _logoImage(),
              _inputText(),
            ],
          ),
        ),
      ),
    );
  }
}
