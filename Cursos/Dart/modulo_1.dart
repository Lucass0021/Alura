import 'dart:io';
// Curso Dart: Exercícios - Módulo 1

// 1) Dando um "oi" para o mundo
// Você recebeu o seguinte código que deveria rodar um “*Hello, World!*” no terminal, porém não está funcionado.
void main() {
  print("Hello, World!");  
}

// 2) Identificando mais problemas
// Mais um código com problemas.

void main() {
  print("Olá, me chamo Dart. Qual o seu nome?");
  var nome = stdin.readLineSync();
  print("Muito prazer, $nome. Vamos fazer vários programas juntos.");
}


// 3) Solicitando a idade do Usuário
// Implemente um programa em dart que captura o nome e a idade do usuário, e exibe em um único print as duas variáveis.
void main(){
  print("Olá, me chamo Dart. Qual seu nome?");
  String? nome = stdin.readLineSync();
  print("Certo!!, e qual a sua idade?");
  String? idade = stdin.readLineSync();
  print("Muito bem!, é um prazer conhece-lô(a) $nome, você tem $idade anos!!");
}
