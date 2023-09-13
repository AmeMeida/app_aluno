import 'package:cadastro_aluno/model/user.dart';

class AlunoController {
  final _alunos = [
    const Aluno(nome: "Isa", ra: "201289"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "wnk", ra: "201308"),
    const Aluno(nome: "Lua", ra: "201176"),
    const Aluno(nome: "Meida", ra: "201290"),
    const Aluno(nome: "Márcia", ra: "201291"),
    const Aluno(nome: "Mariana", ra: "201292"),
    const Aluno(nome: "Babi", ra: "201293")
  ];

  void cadastrar(Aluno aluno) => _alunos.add(aluno);

  List<Aluno> get getAll => _alunos;

  List<Aluno> findByNome(String nome) => _alunos
      .where((aluno) => aluno.nome.toLowerCase().startsWith(nome.toLowerCase()))
      .toList();

  List<Aluno> findByRa(String ra) => _alunos
      .where((aluno) => aluno.ra.toLowerCase().startsWith(ra.toLowerCase()))
      .toList();

  List<Aluno> findByNomeRa(String? nome, String? ra) => _alunos
      .where((aluno) =>
          ((ra == null || ra.isEmpty) && (nome == null || nome.isEmpty)) ||
          ((ra == null || ra.isEmpty) &&
              aluno.nome.toLowerCase().startsWith(nome!.toLowerCase())) ||
          (aluno.ra == ra))
      .toList();
}

final alunoControl = AlunoController();
