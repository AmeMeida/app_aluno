import 'package:cadastro_aluno/components/aluno_tile.dart';
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
            .where((aluno) {
              if (ra != null && ra!.trim().isNotEmpty) {
                return aluno.ra == ra;
              }

              if (nome != null && nome!.trim().isNotEmpty) {
                return aluno.nome.toLowerCase().startsWith(nome!.toLowerCase());
              }

              return true;
            })
            .map((aluno) =>
                AlunoTile(aluno: aluno))
            .toList());
  }
}
