import 'package:cadastro_aluno/controller/user_controller.dart';
import 'package:flutter/material.dart';

class ConsultaAluno extends StatelessWidget {
  final String? ra;
  final String? nome;

  const ConsultaAluno({super.key, this.ra, this.nome});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        children: alunoControl.getAll
            .where((aluno) => nome == null || nome!.isEmpty || aluno.nome.toLowerCase().startsWith(nome!.toLowerCase()))
            .map((aluno) =>
                ListTile(leading: Text(aluno.ra), title: Text(aluno.nome)))
            .toList());
  }
}
