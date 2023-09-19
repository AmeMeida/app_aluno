import 'package:cadastro_aluno/base_page.dart';
import 'package:cadastro_aluno/components/form_alterar.dart';
import 'package:cadastro_aluno/model/user.dart';
import 'package:flutter/material.dart';

class AlterarPage extends StatelessWidget {
  final Aluno aluno;

  const AlterarPage({super.key, required this.aluno});

  @override
  Widget build(BuildContext context) {
    return Layout(context, 
      title: "Alterar", 
      content: Center(
        child: FormAlterar(aluno: aluno),
      )
    );
  }
}
