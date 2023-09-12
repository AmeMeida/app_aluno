import 'package:cadastro_aluno/base_page.dart';
import 'package:cadastro_aluno/components/consulta.dart';
import 'package:flutter/material.dart';

class ConsultaPage extends StatefulWidget {
  const ConsultaPage({super.key});

  @override
  State<ConsultaPage> createState() => _ConsultaPageState();
}

class _ConsultaPageState extends State<ConsultaPage> {
  final nomeController = TextEditingController();
  final raController = TextEditingController();
  final key = GlobalKey<FormState>();

  String? ra;
  String? nome;

  @override
  Widget build(BuildContext context) {
    return Layout(context, title: "Consulta",
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
              key: key,
              child: Column(
                children: [
                  TextFormField(
                    controller: nomeController,
                    decoration: const InputDecoration(
                      labelText: "Nome",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: raController,
                    decoration: const InputDecoration(
                      labelText: "RA",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        nome = nomeController.text.trim();
                        ra = raController.text.trim(); 
                      });
                    },
                    icon: const Icon(Icons.person_search),
                    label: const Text("Buscar nome ou RA")
                  ),
                  SizedBox(
                    height: 300,
                    child: ConsultaAluno(nome: nome, ra: ra)
                  )
                ],
              ),
            ),
      ),
    );
  }
}
