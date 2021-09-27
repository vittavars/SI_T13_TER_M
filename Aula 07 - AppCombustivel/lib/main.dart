import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

// Criar o ambiente e os componentes (Widget) da aplicação
// A Flutter utiliza dois tipos de comportamento para objetos:
// 1. Stateful - responde à alterações e variações
// 2. Stateless - sem comportamento

// Criar uma classe que leva o nome da aplicação (nome de execução)
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// Dentro desta classe ocorrem as operações da aplicação
class _HomeState extends State<Home> {
  // Vamos implementar nossos Widgets (componentes)
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();

  // Variável para controlar o formulário
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Variável que receberá o resultado do cálculo em modo texto
  String _resultado = '';

  // Vamos criar os métodos de: reset e calcular
  void _calcularCombustivel() {
    // Muda o estado das variáveis
    setState(() {
      double va = double.parse(alcoolController.text.replaceAll(',', '.'));
      double vg = double.parse(gasolinaController.text.replaceAll(',', '.'));
      double proporcao = (va / vg);

      // Operador ternário
      _resultado =
          (proporcao < 0.7 ? 'Abasteça com Álcool' : 'Abasteça com Gasolina');
    });
  }

  // Criar como atividade o "reset"

  // Método que constrói a interface gráfica da aplicação
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Álcool ou Gasolina',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh))
        ],
      ),
      // Vamos criar o corpo do App
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            // reserva um espaço para armazenar os campos
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // vamos colocar um ícone ed bomba de gasolina
              Icon(
                Icons.local_gas_station,
                size: 50.0,
                color: Colors.lightBlue[900],
              ),
              // Construir os campos do formulário
              TextFormField(
                controller: alcoolController,
                textAlign: TextAlign.center,
                // Vamos incrementar o "treco" com uma animação
                decoration: InputDecoration(
                    labelText: 'Valor do Álcool',
                    labelStyle: TextStyle(
                        color: Colors.lightBlue[900], fontSize: 26.0)),
              ),
              TextFormField(
                controller: gasolinaController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                // Vamos incrementar o "treco" com uma animação
                decoration: InputDecoration(
                    labelText: 'Valor da Gasolina',
                    labelStyle: TextStyle(
                        color: Colors.lightBlue[900], fontSize: 26.0)),
              ),
              // vamos criar o botão para calcular
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: Container(
                  height: 50,
                  child: RawMaterialButton(
                    onPressed: () {
                      _calcularCombustivel(); // aqui vai calcular os paranauê
                    },
                    child: Text(
                      'Verificar',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    fillColor: Colors.lightBlue[900],
                  ),
                ),
              ),
              // vamos mostrar o resultado do cálculo
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
