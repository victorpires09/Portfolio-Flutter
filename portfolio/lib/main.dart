import 'package:flutter/material.dart';
import 'package:portfolio/screens/telaapresentacao.dart';
import 'package:portfolio/screens/telaprojetos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => TelaApresentacao(),
        "/favoritar":(context) => TelaProjetos(),
      },  
    );
  }
}