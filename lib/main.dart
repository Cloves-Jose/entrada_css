import 'package:flutter/material.dart';
import 'package:projeto_css/app.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Css',
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
