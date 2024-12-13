import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  const Resultado( this.pontuacao, {super.key});

  String get fraseResultado {
    if (pontuacao < 15) {
      return 'Parabéns';
    } else if (pontuacao < 30) {
      return 'Você é bom!';
    } else if (pontuacao < 40) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
