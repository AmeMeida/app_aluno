import 'package:cadastro_aluno/model/user.dart';
import 'package:flutter/material.dart';

class AlunoController with ChangeNotifier {
  final List<Aluno> _alunos = List.from(alunosExemplo);

  void cadastrar(Aluno aluno) {
    _alunos.add(aluno);
    notifyListeners();
  } 

  List<Aluno> get getAll => _alunos;

  List<Aluno> findByNome(String nome) => _alunos.where((aluno) => aluno.nome.toLowerCase().startsWith(nome.toLowerCase())).toList();

  void remover(Aluno al) {
    _alunos.remove(al);
    notifyListeners();
  }

  void atualizar(Aluno anterior, Aluno novo) {
    _alunos[_alunos.indexOf(anterior)] = novo;
    notifyListeners();
  }
}

const alunosExemplo = [
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Isa", ra: "201289"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "Nat", ra: "201306"),
  Aluno(nome: "wnk", ra: "201308"),
  Aluno(nome: "wnk", ra: "201308"),
  Aluno(nome: "wnk", ra: "201308"),
  Aluno(nome: "wnk", ra: "201308"),
  Aluno(nome: "cat", ra: "201171"),
  Aluno(nome: "cat", ra: "201171"),
  Aluno(nome: "cat", ra: "201171"),
  Aluno(nome: "cat", ra: "201171"),
  Aluno(nome: "cat", ra: "201171"),
];
