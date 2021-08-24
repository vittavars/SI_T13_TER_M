// Comentário de uma linha
// CTRL+/ cerca um comentário

import 'dart:io';

/**
 * Comentário em bloco
 * Podemos ter várias linhas
 */

// Todo código em Dart será executado através de um método
// Main() - principal

void main(List<String> args) {
  // Variáveis em Dart
  // int, List, Map, String, bool, double, var, dynamic...
  // O Dart é fortemente tipado (exige declaração do tipo)

  String curso = "Sistemas de Informação";
  int qtdAlunos = 82;
  bool temVaga = true;
  double mensalidade = 890.43;

  // Mostrando dados no console
  print(curso);

  // Concatenação de valores
  // Dois tipo: com o sinal (+) ou por interpolação

  // Por adição (+)
  // .toString() converte um valor numérico em texto
  print("O curso de " + curso + " tem " + qtdAlunos.toString());

  // Interpolação
  print('O curso de $curso tem $qtdAlunos alunos e custa $mensalidade');

  // Criar duas variáveis e mostrar a soma e a divisão entre elas.
  double x = 10, y = 5, soma, divisao;
  soma = x + y;
  divisao = x / y;
  print('$x + $y = $soma\n$x / $y = $divisao');

  // Pegando partes de uma String
  String data = "10/12/1970";
  print(data.substring(0, 2));
  print(data.substring(3, 5));
  print(data.substring(6, 10));

  // Interpolação com cálculo
  print('Faturamento da turma: ${qtdAlunos * mensalidade}');

  // Tipos especiais de variáveis: var e dynamic
  // dynamic - permite definir o tipo da variável no momento da atribuição, sendo alterado a "cada" atribuição
  dynamic variavel = 'Edson';
  print('Tipo da variável: ${variavel.runtimeType} - $variavel');

  variavel = 28;
  print('Tipo da variável: ${variavel.runtimeType} - $variavel');

  variavel = 578.26;
  print('Tipo da variável: ${variavel.runtimeType} - $variavel');

  // O tipo "var"
  // Esse tipo vai permitir que a variável tenha o seu "tipo" definido imediatamente no momento da declaração, sendo imutável ao longo da execução
  var variavel2 = 11.8;
  print('Tipo da variável: ${variavel2.runtimeType} - $variavel2');

  variavel2 = 5;
  print('Tipo da variável: ${variavel2.runtimeType} - $variavel2');

  // Leitura do teclado
  // print('Digite o valor 1: ');
  // var v1 = stdin.readLineSync();

  var valor = 1275.378459786;
  print('O valor arredondado é: ${valor.toStringAsFixed(1)}');
  print('O valor arredondado é: ${valor.toStringAsFixed(2)}');
  print('O valor arredondado é: ${valor.toStringAsFixed(3)}');
  print('O valor arredondado é: ${valor.toStringAsFixed(4)}');
  print('O valor arredondado é: ${valor.toStringAsFixed(5)}');

  // Exercício
  // Faça um código que mostre a média entre três variáveis usando a interpolação e com o resultado com apenas 2 casas decimais
  var v1 = 20, v2 = 33, v3 = 47;
  var media = (v1 + v2 + v3) / 3;
  print('A média entre $v1, $v2 e $v3 é ${(v1 + v2 + v3) / 3}');
  print('A média entre $v1, $v2 e $v3 é ${media.toStringAsFixed(2)}');

  // DESAFIO para a próxima aula (não vale procurar no Google)
  // Não vale nota, então não se engane, tente fazer!!!!!!
  // Montar um código que ordene de A-Z (crescente) e de Z-A (decrescente) o valor de três variáveis.
  // Ex.:
  // Entrada: 21, 5 -12
  // Saída: -12, 5 e 21 e 21, 5 e -12
  //  Deverá ser usado IF-ELSE (ELSEIF)

  // pode usar && ou ||
  if (10 < 20) {
  } else if (20 > 12) {
  } else {}
}
