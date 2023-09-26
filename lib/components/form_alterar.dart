import 'package:cadastro_aluno/controller/user_controller.dart';
import 'package:cadastro_aluno/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class FormAlterar extends StatefulWidget {
  final Aluno aluno;
  const FormAlterar({super.key, required this.aluno});

  @override
  State<FormAlterar> createState() => _FormAlterarState();
}

class _FormAlterarState extends State<FormAlterar> {
  final key = GlobalKey<FormState>();
  final nomeController = TextEditingController();
  final raController = TextEditingController();

  @override
  void initState() {
    super.initState();

    nomeController.text = widget.aluno.nome;
    raController.text = widget.aluno.ra;
  }

  @override
  Widget build(BuildContext context) {
    final alunoControl = Provider.of<AlunoController>(context, listen: false);

    return Form(
      key: key,
      child: Column(
        children: [
          TextFormField(
            controller: nomeController,
            validator: (value) {
              if (value == null || value.trim() == "") {
                return "Insira um nome!";
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: "Nome"
            ),
          ),
          TextFormField(
            controller: raController,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) {
              if (value == null || value.trim() == "") {
                return "Insira um RA!";
              }

              try {
                int.parse(value);
              } catch (e) {
                return "RA deve conter somente números.";
              }

              if (value.length != 6) {
                return "RA deve conter exatamente 6 dígitos.";
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: "RA"
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (!key.currentState!.validate()) {
                return;
              }

              final nome = nomeController.text.trim();
              final ra = raController.text.trim();

              final novoAluno = Aluno(nome: nome, ra: ra);
              alunoControl.atualizar(widget.aluno, novoAluno);

              Navigator.of(context).pushNamed("/consulta");
            }, 
            child: const Text("Alterar")
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                    title: const Text("Deseja mesmo excluir?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("Cancelar")
                      ),
                      TextButton(
                        onPressed: () {
                          alunoControl.remover(widget.aluno);
                          Navigator.of(context).pushNamed("/consulta");
                        },
                        child: const Text("Confirmar")
                      )
                    ],
              ));
            },
            child: const Text("Excluir")
          )
        ],
      )
    );
  }
}