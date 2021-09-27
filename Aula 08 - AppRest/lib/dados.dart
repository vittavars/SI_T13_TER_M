import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  final List conteudo;

  // recebe os dados da tela anterior (origem)
  Dados({Key key, @required this.conteudo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dados do Usuário')),
      body: Center(
        child: Column(
          children: [
            Text('Id: ' + conteudo[0]),
            Text('Nome: ' + conteudo[1]),
            Text('Email: ' + conteudo[2]),
            Text('Token: ' + conteudo[3]),
            Text('\n'),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tela Anterior'),
            )
          ],
        ),
      ),
    );
  }
}
