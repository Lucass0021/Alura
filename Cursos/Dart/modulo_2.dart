import 'dart:io';

// Calculadora de Operações Matemáticas Básicas

void main(){
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);

  void adicao(){
    print(n1 + n2);
  }
  void subtracao(){
    print(n1 - n2);
  }
  void multiplicacao(){
    print(n1 * n2);
  }
  void divisao(){
    print(n1 / n2);
  }
  
  adicao();
  subtracao();
  multiplicacao();
  divisao();
}

// Tipos de Variáveis
/*

- Tipos Primitivos: Elementos mais básicos para armazenar valores simples.

int = números inteiros (ex: 1,2,3..);
double = números decimais (1.5,3.14..);
bool = valores binários e lógicos (true or false);
String = sequências de caracteres (ex: "Olá, Mundo!", "Essa é uma frase");
rune = um único caracter (ex: 'a', 'B', ou '3');

- Tipos Compostos: Utilizam como base tipos primitivos e até outros tipos compostos.

List = armazenam valores ordenados do mesmo tipo (ex: lista de compras com itens repetidos ou não);
Map = associam chaves únicas a valores (ex: agenda telefônica com nomes e números de telefone);
Set = coleções de valores não ordenados e sem valores repetidos (ex: conj. de cartas sem repetições);

Exemplos Práticos de utilização

// Variáveis primitivas
int numeroInteiro = 10;
double numeroDecimal = 3.14;
String texto = "Este é um texto.";
bool isAtivo = true;

// Variáveis compostas
List<String> nomes = ["Ana", "João", "Maria"];
Map<String, String> agenda = {"Ana": "1234-5678", "João": "9876-5432"};
Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez

// Acessando valores
print("Número inteiro: $numeroInteiro");
print("Número decimal: $numeroDecimal");
print("Texto: $texto");
print("Ativo: $isAtivo");

print("Primeiro nome da lista: ${nomes[0]}");
print("Telefone da Ana: ${agenda['Ana']}");
print("Números únicos no conjunto: $numerosUnicos");

*/

// Curso Dart: Exercícios - Módulo 2

// 1) Calculando o dobro de um número
// Faça um programa simples que calcula o dobro de um número inserido no terminal.

void main(){
  print("Insira o valor que será dobrado:");
  double n = double.parse(stdin.readLineSync()!);
  print(n * 2);
}

// 2) Descobrindo a média de idades
// Escreva um programa que calcula a idade média de três pessoas.

void main (){
  print("Digite a idade da primeira pessoa:");
  int p1 = int.parse(stdin.readLineSync()!);
  print("Digite a idade da segunda pessoa:");
  int p2 = int.parse(stdin.readLineSync()!);
  print("Insira a idade da terceira pessoa:");
  int p3 = int.parse(stdin.readLineSync()!);
  
  double media = (p1+p2+p3)/3;
  print("A média da idade dessas três pessoas é $media.");
}

// 3) Escrevendo a ficha de participante
// Desenvolva um programa que coleta e exibe uma pequena "ficha" com informações do usuário.

void main(){
  // Coletando informações do Usuário
  print("Insira seu nome:");
  String? nome = stdin.readLineSync();
  print("Insira seu CPF(11 Dígitos):");
  String? CPF = stdin.readLineSync();
  print("Insira sua idade:");
  int idade = int.parse(stdin.readLineSync()!);
  print("Insira sua altura:");
  double altura = double.parse(stdin.readLineSync()!);
  bool participanteComunidade = true;

  // Exibindo Informações do Usuário
  print('Meu nome é $nome, \n'
  'Meu CPF é $CPF, \n'
  'Membro da Comunidade? $participanteComunidade, \n'
  'Eu tenho $altura metros de altura e $idade anos de idade.');
}

// 4) Calculando o Salário do Freela
// Crie um programa que lê as horas trabalhadas e calcula o salário líquido. (Considere: A empresa paga 50 reais/h, O desconto do salário é de 5% e deve ser subtraído do salário bruto).

void main(){
  print("Digite o número de horas trabalhadas:");
  double horas = double.parse(stdin.readLineSync()!);
  double salario_bruto = horas * 50;
  double desconto = (5/100) * salario_bruto;
  double salario_liquido = salario_bruto - desconto;
  print("O salário líquido é igual a R\$$salario_liquido");
}

// 5) Consertando Erros em um Programa

void main() {
  double saldo = 1000;
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  saldo -= valorPix;

  print('Pix realizado com sucesso!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
}

// 6) Identificando e Corrigindo Tipos no Dart

void main(){
  int pontos_iniciais = 100;
  print("Bem-vindo(a) ao Clube de Benefícios, você possui $pontos_iniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  int pontos_resgatados = int.parse(stdin.readLineSync()!);
  pontos_iniciais -= pontos_resgatados;
  print("Você resgatou $pontos_resgatados pontos. Pontos restantes $pontos_iniciais.");
}

// 7) Refatorando o Código do Clube de Benefícios com Função

void main(){
  int pontos_iniciais = 1000;
  int pontos_restantes;

  print("Bem-vindo(a) ao Clube de Benefícios, você possui $pontos_iniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  int pontos_resgatados = int.parse(stdin.readLineSync()!);

  pontos_restantes = subtraindo_pontos(pontos_iniciais, pontos_resgatados);

  print("Você resgatou $pontos_resgatados pontos. Pontos restantes: $pontos_restantes");
  }
  int subtraindo_pontos(int pontos_iniciais, int pontos_resgatados){
    return pontos_iniciais - pontos_resgatados;
}

// 8) Implementando um Programa de Cupons
// Programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado. (Considere: a cada 50 reais gastos se ganha 1 cupom).

void main(){
  print("Insira o valor gasto em produtos do supermercado:");
  double valor = double.parse(stdin.readLineSync()!);
  int n_cupons = (valor / 50).floor();

  print("O cliente receberá $n_cupons cupom(s) para esta compra.");
}
