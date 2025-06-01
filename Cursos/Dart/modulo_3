import 'dart:io';

// Calculadora de Operações Matemáticas Básicas
void main(){
  // Definindo variáveis
  double n1 = 0;
  double n2 = 0;
  String operacao = "";
  double resultado = 0;
  
  // Funções de Operações Matemáticas
  void adicao(resultado){
    resultado = n1 + n2;
    print("O resultado da adição de $n1 + $n2 é igual a: $resultado");
  }
  void subtracao(resultado){
    resultado = n1 - n2;
    print("O resultado da subtração de $n1 - $n2 é igual a: $resultado");
  }
  void multiplicacao(resultado){
    resultado = n1 * n2;
    print("O resultado da multiplicação de $n1 * $n2 é igual a: $resultado");
  }
  void divisao(resultado){
    resultado = n1 / n2;
    print("O resultado da divisão de $n1 / $n2 é igual a: $resultado");
  }

  void calcular(){
    // Utilizando switch-case para seleção de operação
    switch(operacao){
      case "+": adicao(resultado);
      case "-": subtracao(resultado);
      case "/": divisao(resultado);
      case "*": multiplicacao(resultado);
      break;
    }
  }

// Obtendo valores de entrada
  print("Digite o primeiro valor:");

  String? entrada = stdin.readLineSync();

  if (entrada != null){
    if (entrada != ""){
      n1 = double.parse(entrada);
    }
  }

  print("Digite a operação desejada(+,-,/,*):");

  entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada != ""){
      operacao = entrada;
    }
  }

  print("Digite o segundo valor:");

  entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada != ""){
      n2 = double.parse(entrada);
    }
  }

calcular();

// Utilizando if-else para seleção de operação
/*
  if (operacao == "+"){
    adicao();
  } else {
    if (operacao == "-"){
      subtracao();
    } else {
      if (operacao == "/"){
        divisao();
      } else {
        if (operacao == "*"){
          multiplicacao();
        }
      }
    }
  }
  */
}

// Curso Dart: Exercícios - Módulo 3

// 1) Calculando idade para carteira de motorista
// Um programa que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade.

void main(){
  print("Insira sua idade:");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade < 18){
    print("Infelizmente devido sua idade de $idade anos, você não está hábil a dirigir.");
  } else{
    print("Parabéns!! Você já tem idade suficiente para se habilitar.");
  }
}

// 2) Retornando os meses do ano
// Um programa que solicita ao usuário um número de 1 a 12 e retorna o mês correspondente do ano.

void main(){

int mes = 0;
print("Digite um número correspondente ao mês desejado (1 a 12):");

String? entrada = stdin.readLineSync();

if (entrada != null){
  if (entrada != ""){
    mes = int.parse(entrada);
  }
}

switch (mes) {
  case 1: 
    print("Janeiro");
    break;
  case 2: 
    print("Fevereiro");
    break;
  case 3: 
    print("Março");
    break;
  case 4: 
    print("Abril");
    break;
  case 5: 
    print("Maio");
    break;
  case 6: 
    print("Junho");
    break;
  case 7: 
    print("Julho");
    break;
  case 8: 
    print("Agosto");
    break;
  case 9: 
    print("Setembro");
    break;
  case 10: 
    print("Outubro");
    break;
  case 11: 
    print("Novembro");
    break;
  case 12: 
    print("Dezembro");
    break;
  default: 
    print("Mês inválido");
  }
}

// 3) Implementando verificação de saldo

double saldo = 1000.0; // Saldo inicial em reais

void main() {
  int saldo_final = 0;
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  void VerificarSaldo(saldo_final){
    if (valorPix <= saldo){
      saldo_final = saldo - valorPix;
      print("Transferência realizada com sucesso! Agora seu saldo atual é de R\$ $saldo_final.");
    } else{
      print("Saldo insuficiente para a realização da transferência.");
    }
  }

  VerificarSaldo(saldo_final);
}

// 4) Verificando a maioridade em diferentes países
// Programa que verifica a maioridade para dirigir em diferentes países.

void main(){
  print("Bem-vindo(a) ao Programa de Vericação de Maioridade para Habilitação em Diferentes Países!");
  
  // Coletando Informações
  print("Insira sua idade:");
  int idade = int.parse(stdin.readLineSync()!);
  print("Insira o país em que se encontra atualmente(Japão, Brasil ou EUA):"); 
  String? pais = stdin.readLineSync();

  if (idade < 16){
    print("Infelizmente você não pode se habilitar em nenhum dos países citados acima.");
  } else if (idade < 18){
      print("Você pode se habilitar nos EUA, porém, não pode se habilitar no Brasil e no Japão");
  } else if (idade < 20){
      print("Você pode se habilitar no Brasil e nos EUA, mas não pode se habilitar no Japão.");
  } else {
      print("Você pode se habilitar em todos os países citados.");
  }
}
