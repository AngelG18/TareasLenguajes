import 'package:flutter/material.dart';

class BotonesFlotantes extends StatelessWidget {
  final VoidCallback sumar;
  final VoidCallback restar;
  final VoidCallback multiplicar;
  final VoidCallback dividir;

  const BotonesFlotantes({
    super.key,
    required this.sumar,
    required this.restar,
    required this.multiplicar,
    required this.dividir,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.brown,
          onPressed: sumar,
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          backgroundColor: Colors.brown,
          onPressed: restar,
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          backgroundColor: Colors.brown,
          onPressed: multiplicar,
          child: const Icon(Icons.close),
        ),
        FloatingActionButton(
          backgroundColor: Colors.brown,
          onPressed: dividir,
          child: const Icon(Icons.vertical_align_center),
        ),
      ],
    );
  }
}
