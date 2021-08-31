// Estrutura de Listas
// Listas são estruturas de dados que permitem armazenar
// dados de forma sequencial. São indicadas por '[]'

import 'dart:math'; // biblioteca matemática

void main(List<String> arguments) {
  // declaração de uma lista de Strings (Texto)
  // Esse símbolo '<>' recebe o nome de diamond
  //                          0          1        2
  // var produtos = <String>['Cenoura', 'Batata', 'Melão'];
  // print(produtos);

  // // acessando elementos pelo índice
  // print(produtos[0]); // índice 0
  // print(produtos[1]); // índice 1
  // print(produtos[2]); // índice 2

  // // percorrendo uma lista com laço de repetição
  // // Primeiro com o FOR tradicional
  // // length é igual a comprimento
  // for (var i = 0; i < produtos.length; i++) {
  //   print('Índice: $i => ${produtos[i]}');
  // }

  // // Agora com FOR IN
  // for (var produto in produtos) {
  //   print('Produto: $produto');
  // }

  // // Vamos treinar
  // // Criar uma lista com 10 elementos e mostrar apenas
  // // o valor dos índices pares.
  // var desafio = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // for (var i = 0; i < desafio.length; i++) {
  //   if (i % 2 == 0) {
  //     print(desafio[i]);
  //   }
  // }

  // // com FOR IN
  // var contagem = 0;
  // for (var n in desafio) {
  //   if (contagem % 2 == 0) {
  //     print(n);
  //   }
  //   contagem += 1;
  // }

  // var produtos = <String>['Cenoura', 'Batata', 'Melão'];

  // // Adicionar elementos em uma lista
  // // .add(value) - adiciona ao final da lista
  // print(produtos);
  // produtos.add('Brócolis');
  // print(produtos);

  // // .insert(index, value) - adiciona na posição específica
  // print(produtos);
  // produtos.insert(2, 'Pêra');
  // print(produtos);

  // // inserindo vários a mesmo tempo
  // // Forma 1: ..add(value)...add(value)
  // print(produtos);
  // produtos..add('Tomate')..add('Laranja')..add('Pepino');
  // print(produtos);

  // // Forma 2: .addAll([])
  // produtos = []; // zerando a lista
  // print(produtos);
  // produtos.addAll(['Repolho', 'Mandioca', 'Alface']);
  // print(produtos);

  // // Forma 3: insertAll(index, [])
  // produtos.insertAll(2, ['Cebola', 'Alho', 'Salsinha']);
  // print(produtos);

  // // Remoção de elementos
  // // Pelo valor
  // produtos.remove('Alho');
  // print(produtos);

  // // Pelo índice
  // produtos.removeAt(1); // Mandioca
  // print(produtos);

  // // O último
  // produtos.removeLast();
  // print(produtos);

  // // Por intervalo
  // produtos.removeRange(1, 3);
  // print(produtos);

  // // Remoção por lambda (função anônima)
  // var nomes = ['Ana', 'Lucia', 'Edson', 'Pedro', 'Luiz', 'Tina'];
  // print(nomes);
  // nomes.removeWhere((String nome) => nome == 'Ana');
  // print(nomes);

  // // Estudo de caso: lista com valores repetidos
  // nomes = ['Ana', 'Lucia', 'Edson', 'Pedro', 'Lucia', 'Tina', 'Mariana'];
  // nomes.removeWhere((String nome) => nome == 'Ana');
  // print(nomes);

  // Remoção de mais de um elemento diferente
  // var nomes = ['Ana', 'Lucia', 'Edson', 'Pedro', 'Lucia', 'Tina', 'Mariana'];
  // print(nomes);
  // nomes.removeWhere((String n) => (n == 'Ana' || n == 'Tina'));
  // print(nomes);

  // // Removendo com contains
  // nomes.removeWhere((String n) => ['Edson', 'Pedro'].contains(n));
  // print(nomes);

  // // Pesquisar em listas
  // print(nomes.contains('Mariana'));
  // print(nomes.contains('Tio Patinhas'));

  // // Alterar valores em uma lista
  // // Basta indicar o índice e atribuir o novo valor
  // nomes[0] = 'Lucimara'; // alterando o valor do índice "0"
  // print(nomes);

  // Ordenação
  // var nomes = ['Ana', 'Lucia', 'Edson', 'Pedro', 'Lucia', 'Tina', 'Mariana'];

  // // Ordenação sem parâmetros (ordem crescente)
  // print(nomes);
  // print(nomes..sort());

  // // Ordem decrescente
  // print(nomes..reversed);

  // // Outro método de ordenação
  // nomes.sort((x, y) => x.compareTo(y));
  // print(nomes);

  // nomes.sort((y, x) => x.compareTo(y));
  // print(nomes);

  // // Mesclando listas
  // // Forma 1 - método imperativo (altera o estado das listas)
  // var x = <String>['Casa', 'Tapete'];
  // var y = <String>['Martelo', 'Prego'];
  // x.addAll(y);
  // print(x);

  // // Forma 2 - funcional (retorna o valor sem alterar as listas)
  // var saida = [x, y].expand((e) => e).toList();
  // print(saida);
  // print(x);

  // Agora é com vocês
  // Criar uma lista com 50 números aleatórios entre 0 e 100 e:
  // 1 - Excluir apenas os que forem menores que 10
  // 2 - Verificar se o número 77 está na lista
  // 3 - Criar uma lista com 10 números negativos e incorporar a lista (1)
  // 4 - Mostrar o conteúdo da lista em ordem decrescente
  //  Dica: import 'dart:math'; para os aleatórios

  // Resolvendo
  var rnd = Random();
  var numeros = List.generate(50, (_) => rnd.nextInt(101));
  print(numeros);

  // remover os menores que 10
  numeros.removeWhere((int e) => e < 10);
  print(numeros);

  // Será que o 77 está na lista?
  print(numeros.contains(77));

  var negativos = [-1, -13, -9, -16, -30, -87, -4, -5, -3, -1];
  // incorporar a lista na anterior
  numeros.addAll(negativos);
  print(numeros);

  // Vamos ordenar a lista final em ordem decrescente
  numeros.sort((y, x) => x.compareTo(y));
  print(numeros);
}
