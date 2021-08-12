import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Css',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Criando variável controller de entrada de dados
  final TextEditingController _entradaAlunos = TextEditingController();

  //Comunicação com o banco de dados
  CollectionReference _alunos = FirebaseFirestore.instance.collection('teste');

  //Função que vai limpar o campo de texto
  void _clearText() {
    _entradaAlunos.text = '';
  }

  //Checar informações do banco de dados

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Css'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
                controller: _entradaAlunos,
                decoration: InputDecoration(labelText: 'Aproxime o cartão'))
          ],
        ));
  }
}
