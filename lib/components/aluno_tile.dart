import 'package:cadastro_aluno/controller/user_controller.dart';
import 'package:cadastro_aluno/model/user.dart';
import 'package:cadastro_aluno/pages/alterar.dart';
import 'package:flutter/material.dart';

class AlunoTile extends StatelessWidget {
  final Aluno aluno;

  const AlunoTile({super.key, required this.aluno});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(aluno.ra),
      title: Text(aluno.nome),
      trailing: SizedBox(
          width: 80,
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AlterarPage(aluno: aluno))),
                  icon: const Icon(Icons.edit)),
              IconButton(
                  onPressed: () => alunoControl.remover(aluno),
                  icon: const Icon(Icons.delete)),
            ],
          )),
    );
  }
}
