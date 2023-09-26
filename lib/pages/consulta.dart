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
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Form(
              key: key,
              child: Column(
                children: [
                  TextFormField(
                    controller: nomeController,
                    onChanged: (value) => setState(() => nome = value),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: "Nome",
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: raController,
                    onChanged: (value) => setState(() => ra = value),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search_off_outlined),
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
                  Expanded(
                    child: ConsultaAluno(nome: nome, ra: ra)
                  )
                ],
              ),
            ),
      ),
    );
  }
}
