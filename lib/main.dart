import 'package:cadastro_aluno/pages/cadastro.dart';
import 'package:cadastro_aluno/pages/consulta.dart';
import 'package:cadastro_aluno/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Alunos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/cadastro": (context) => const CadastroPage(),
        "/consulta": (context) => const ConsultaPage()
      }
    );
  }
}
