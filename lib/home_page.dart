import 'package:flutter/material.dart';
import 'botones_flotantes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double contador = 10;

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$contador', style: estilo),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotonesFlotantes(
        sumar: sumar,
        restar: restar,
        multiplicar: multiplicar,
        dividir: dividir,
      ),
    );
  }

  void sumar() {
    setState(() {
      contador += 2;
    });
  }

  void restar() {
    setState(() {
      contador -= 2;
    });
  }

  void multiplicar() {
    setState(() {
      contador *= 2;
    });
  }

  void dividir() {
    setState(() {
      contador /= 2;
    });
  }
}
