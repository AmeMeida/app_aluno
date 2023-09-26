import 'package:cadastro_aluno/components/aluno_tile.dart';
import 'package:cadastro_aluno/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsultaAluno extends StatelessWidget {
  final String? ra;
  final String? nome;

  const ConsultaAluno({super.key, this.ra, this.nome});

  @override
  Widget build(BuildContext context) {
    return Consumer<AlunoController>(builder: (context, alunoControl, child) {
      final filteredList = alunoControl.getAll.where((aluno) {
        if (ra != null && ra!.trim().isNotEmpty) {
          return aluno.ra.toLowerCase().startsWith(ra!.toLowerCase());
        }

        if (nome != null && nome!.trim().isNotEmpty) {
          return aluno.nome.toLowerCase().startsWith(nome!.toLowerCase());
        }

        return true;
      }).toList();

      return ListView.separated(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: filteredList.length,
        itemBuilder: (context, index) => AlunoTile(aluno: filteredList[index]),
        separatorBuilder: (context, index) => const Divider(thickness: 2),
      );
    });
  }
}
