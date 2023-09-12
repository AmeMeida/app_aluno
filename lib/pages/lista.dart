import 'package:cadastro_aluno/base_page.dart';
import 'package:cadastro_aluno/components/consulta.dart';
import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(context, title: "Alunos", 
      content: const ConsultaAluno(),
    );
  }
}
