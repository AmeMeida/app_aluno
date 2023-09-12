import 'package:cadastro_aluno/model/user.dart';

class AlunoController {
  final _alunos = [
    const Aluno(nome: "Isa", ra: "201289"),
    const Aluno(nome: "Isa", ra: "201289"),
    const Aluno(nome: "Isa", ra: "201289"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "Nat", ra: "201306"),
    const Aluno(nome: "wnk", ra: "201308"),
    const Aluno(nome: "wnk", ra: "201308"),
    const Aluno(nome: "wnk", ra: "201308"),
    const Aluno(nome: "wnk", ra: "201308")
  ];

  void cadastrar(Aluno aluno) => _alunos.add(aluno);

  List<Aluno> get getAll => _alunos;

  List<Aluno> findByNome(String nome) => _alunos.where((aluno) => aluno.nome.toLowerCase().startsWith(nome.toLowerCase())).toList();
}

final alunoControl = AlunoController();
