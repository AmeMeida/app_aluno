import 'package:cadastro_aluno/base_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(context, title: "Home",
      content: const Center(
        child: Text("Hi"),
      ),
    );
  }
}
