import 'dart:io';

// Calculadora de Operações Matemáticas Básicas
void main(){
  // Definindo variáveis
  double n1 = 0;
  double n2 = 0;
  String operacao = "";
  double resultado = 0;
  List<String> operacoes = <String>["+", "-", "*", "/"];
  
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

  void getOperacao(entrada){
    print("Digite uma operação ${operacoes.toString()}:");
    entrada = stdin.readLineSync();
    if (entrada != null){
      if(operacoes.contains(entrada)){
        operacao = entrada!;
      } else {
        print("Operação Inválida. Tente novamente");
        getOperacao(entrada);
      }
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

  getOperacao(entrada);

  print("Digite o segundo valor:");

  entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada != ""){
      n2 = double.parse(entrada!);
    }
  }

calcular();
}


// Testando as funções do Artigo recomendado no Módulo 4

// 1. forEach()
void main(){

  var fruits = ['banana', 'pineapple', 'watermelon', 'orange'];
  fruits.forEach((fruit) => print(fruit)); // => banana pineapple watermelon

// 2. map()

  var mappedFruits = fruits.map((fruit) => 'I love $fruit').toList();
  print(mappedFruits); // => ['I love banana', ‘I love pineapple’, ‘I love watermelon’]
}

// 3. contains()
void main(){
  var numbers = [1, 3, 2, 5, 4];
  print(numbers.contains(6)); // => true

// 4. Sort()
numbers.sort((num1, num2) => num1 - num2); // => [1, 2, 3, 4, 5]
print(numbers);

// 5. reduce(),fold()
var sum = numbers.reduce((curr, next) => curr + next);
print(sum); // => 15
const initialValue = 10;
var sum2 = numbers.fold(initialValue, (curr, next) => curr + next);
print(sum2); // => 25 
}

// 6. every
void main(){
  List<Map<String, dynamic>> users = [
  { "name": 'John', "age": 18 },
  { "name": 'Jane', "age": 21 },
  { "name": 'Mary', "age": 23 },
];
  var is18AndOver = users.every((user) => user["age"] >= 18);
  print(is18AndOver); // => true
  
  var hasNamesWithJ = users.every((user) => user["name"].startsWith('J'));
  print(hasNamesWithJ); // => false

// 7. where(),firstWhere(),singleWhere()
  // Filtra usuários com mais de 21 anos
  var over21s = users.where((user) => user["age"] > 21);
  print(over21s.length); // => 1

  // Encontra o primeiro usuário cujo nome começa com 'J'
  var nameJ = users.firstWhere((user) => user["name"].startsWith('J'), orElse: () => {});
  print(nameJ); // => {name: John, age: 18}

  // Encontra um único usuário com menos de 18 anos
  var under18s = users.singleWhere((user) => user["age"] < 18, orElse: () => {});
  print(under18s.isEmpty ? null : under18s); // => null
}

// 8. take(),skip()
void main(){
  var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
  print(fiboNumbers.take(3).toList()); // => [1, 2, 3]
  print(fiboNumbers.skip(5).toList()); // => [13, 21]
  print(fiboNumbers.take(3).skip(2).take(1).toList()); // => [3]

// 9. List.from()
  var clonedFiboNumbers = List.from(fiboNumbers);
  print('Cloned list: $clonedFiboNumbers');
}

// 10. expand()
void main(){
  var pairs = [[1, 2], [3, 4]];
  var flattened = pairs.expand((pair) => pair).toList();
  print('Flattened result: $flattened'); // => [1, 2, 3, 4]
  var input = [1, 2, 3];
  var duplicated = input.expand((i) => [i, i]).toList();
  print(duplicated); // => [1, 1, 2, 2, 3, 3]
}

// Curso Dart: Exercícios - Módulo 4

// 1) Validação de Categorias de Produtos em um Sistema de Estoque
// Desenvola um sistema de gerenciamento de estoque onde cada produto deve pertencer a uma categoria específica como eletronicos, alimentos, vestuario e livros.

void main(){
  List<String> Categorias = ["Eletronicos", "Alimentos", "Vestuario", "Livros"];
  List<String> Produtos = [];
  String? categoria = "";
  String? produto = "";

  void validandoCategoria(){
    print("Digite a categoria ao qual o novo produto vai pertencer:");
    categoria = stdin.readLineSync();
    if (categoria != null){
      if (Categorias.contains(categoria)){
        print("Categoria válida: $categoria");
      } else{
        print("Categoria inválida. Insira novamente.");
        validandoCategoria();
      }
    }
  }

  void adicionandoProduto(){
    print("Insira o produto que deseja adicionar:");
    produto = stdin.readLineSync();
    if(produto != null && produto!.isNotEmpty){
      Produtos.add(produto!); // adiciona o produto a lista
      print("Produto adicionado: $produto.");
      print(Produtos);
        } else{
          print("Nenhum produto inserido. Tente novamente.");
          adicionandoProduto();
      }
    }
  
  adicionandoProduto();
  validandoCategoria();
}

// 2) Validação de Tipos de Arquivos em um Sistema de Upload
// Desenvolva um sistema de upload de arquivos que aceita apenas tipos específicos como pdf, jpg, png e docx. 

void main(){
  List<String> tipos = [".jpg", ".pdf", ".png", ".docx"];
  String? arquivo = "";

  void validandoArquivo(){
    print("Insira o arquivo:");
    arquivo = stdin.readLineSync();
    if(arquivo != null && arquivo!.isNotEmpty){
      if(tipos.contains(arquivo)){
        print("Formato de arquivo aceito.");
      } else{
        print("Formato de arquivo inválido. Tente novamente");
        validandoArquivo();
      }
    }
  }
  validandoArquivo();
}

// 3) Dando uma Nova Chance no Retorno de Mês
// Utilizando o código de uma atividade do Módulo 3, que retorna um mês de acordo com o número, pegue aquele código e adicione a recursão.
void main(){

  void InserindoNum(){
    print("Insira um número correspondente a um mês do ano(1 a 12).");
    int mes = int.parse(stdin.readLineSync()!);
    if(mes >= 1 && mes <= 12){
          switch(mes){
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
          } 
    } else{
        print("Mês Inválido, insira novamente.");
        InserindoNum();
    }
  }
  InserindoNum();
}

// 4) Criando a Função de Depósito e Fazendo sua Validação
// Cria uma operação de depósito e escreva uma função em que o usuário, após digitar um valor numérico, o insere na conta.

void main(){

  void recebendoOperacao(){

    List<String> operacoes = ["Deposito", "Retirada", "Transferencia", "Pagamento"];
    print("Bem-vindo ao Banco Digital. Insira a operação que deseja realizar ($operacoes)");
    String? operacao = stdin.readLineSync();

    void validandoValor(){
      print("Insira o valor desejado para essa operação:");
      int valor = int.parse(stdin.readLineSync()!);
      if (valor != null && valor != ""){
        if (valor > 0){
        print("Operação escolhida: $operacao, Valor: R\$ $valor.");
        } else{
          print("Valor inválido. Insira novamente.");
          validandoValor();
        }
      }
    }
    if (operacao != null){
        if (operacao != ""){
          if(operacoes.contains(operacao)){
            validandoValor();
          } else{
            print("Operação inválida! Tente novamente.");
            recebendoOperacao();
          }
        }
    }
  }
  recebendoOperacao();
}

// 5) Validação de Métodos de Pagamento em uma Plataforma de E-commerce
// Desenvolva uma plataforma E-commerce onde o usuário pode escolher entre diferentes métodos de pagamento como cartao, boleto, paypal e pix. Crie uma função que solicite ao usuário o método de pagamento desejado e valide se a entrada é válida.

void main(){

  void validandoMetodo(){
    List<String> MetodosPag = ["cartao", "paypal", "boleto", "pix"];
    print("Insira o método de pagamento desejado ${MetodosPag.map((m) => m[0].toUpperCase() + m.substring(1)).toList()}):");
    String? metodo = stdin.readLineSync();
    
    if (metodo != null && metodo.trim() != ""){
      String metodoFormatado = metodo.toLowerCase().trim();

      if (MetodosPag.contains(metodoFormatado)){
        print("Método de pagamento escolhido: ${metodoFormatado[0].toUpperCase()}${metodoFormatado.substring(1)}");
      } else{
        print("Método inválido. Insira novamente");
        validandoMetodo();
      }
    }
  }
  validandoMetodo();
}
