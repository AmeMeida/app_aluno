import 'package:cadastro_aluno/controller/user_controller.dart';
import 'package:cadastro_aluno/model/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormCadastro extends StatefulWidget {
  const FormCadastro({super.key});

  @override
  State<FormCadastro> createState() => _FormCadastroState();
}

class _FormCadastroState extends State<FormCadastro> {
  final key = GlobalKey<FormState>();
  final nomeController = TextEditingController();
  final raController = TextEditingController();

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
              if (value == null || value.isEmpty) {
                return "Insira um nome.";
              }

              if (value.length < 3) {
                return "O nome deve ter ao menos 3 caracteres.";
              }

              if (value.length > 20) {
                return "O nome deve conter menos de 20 caracteres.";
              }

              return null;
            },
            decoration: const InputDecoration(
              labelText: "Nome",
              hintText: "Seu nome",
              border: OutlineInputBorder()
            )),
          const SizedBox(height: 8),
          TextFormField(
            controller: raController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Insira um RA.";
              }

              if (value.length != 6) {
                return "Um RA válido deve ter 6 caracteres.";
              }

              return null;
            },
            decoration: const InputDecoration(
              labelText: "RA",
              hintText: "200300",
              border: OutlineInputBorder()
            )),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              if (key.currentState != null && key.currentState!.validate()) {
                final nome = nomeController.text.trim();
                final ra = raController.text.trim();

                final aluno = Aluno(nome: nome, ra: ra);
                alunoControl.cadastrar(aluno);
              }
            },
            icon: const Icon(Icons.person_add),
            label: const Text("Cadastrar"))
        ],
      )
    );
  }
}