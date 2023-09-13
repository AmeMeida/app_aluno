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
        children: alunoControl
            .findByNomeRa(nome, ra)
            .map((aluno) => ListTile(
                leading: const Icon(Icons.person),
                title: Text(aluno.nome),
                subtitle: Text(aluno.ra)))
            .toList());
  }
}
