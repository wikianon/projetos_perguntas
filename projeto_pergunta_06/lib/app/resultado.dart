import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        'Parabéns!',
        style: TextStyle(fontSize: 28, color: Colors.green),
      ),
    );
  }
}
