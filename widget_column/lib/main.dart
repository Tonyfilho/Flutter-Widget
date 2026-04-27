import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  /// MyApp não pode ter a palavra "Const" MyApp.
}

class MyApp extends StatelessWidget {
  double largura = 100;
  double altura = 100;
  MyApp({super.key});

  ///por criamos um atributo , MyApp não pode ter a palavra "Const" MyApp.

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Container(
        ///temos os Child onde colocaremos uma coluna
        ///como ja temos um child, temos que criar children.
        ///children é uma array
        child: Column(
          ///temos uma propriedade chamada MainAxisAlignment é o EIXO VERTICAL
          /// mainAxisAlignment: MainAxisAlignment.end,
          /// mainAxisAlignment: MainAxisAlignment.spaceAround,
          /// mainAxisAlignment: MainAxisAlignment.start,
          /// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ///  mainAxisAlignment: MainAxisAlignment.values,
          ///  mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          ///temos uma propriedade chamada CrossAxisAlignment é o EIXO HORIZONTAL 
          ///temo os Eixo Cross START fica tudo na ESQUERDA
          ///
          ///  crossAxisAlignment: CrossAxisAlignment.start,
          /// END começa tudo na DIREITA
          /// crossAxisAlignment: CrossAxisAlignment.end,
          ///
          /// CENTER centraliza no meio da tela
          /// crossAxisAlignment: CrossAxisAlignment.center,
          ///
          /// STRETCH faz ocupar toda a tela
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(color: Colors.red[200], width: largura, height: altura),
            Container(
              color: const Color.fromARGB(255, 154, 239, 236),
              width: largura,
              height: altura,
            ),
            Container(
              color: const Color.fromARGB(255, 154, 160, 239),
              width: largura,
              height: altura,
            ),

            ///Tem a função parecida com Gap do Display Flex e o <br>
            ///Mas neste caso na Vertical e Horizontal
            SizedBox(height: 50, width: 50),
          ],
        ),
      ),
    );
  }
}
