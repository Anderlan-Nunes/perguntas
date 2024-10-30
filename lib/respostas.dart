import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() onSelected;
  const Respostas(this.texto, this.onSelected, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.blue.withOpacity(0.5),
          disabledForegroundColor: Colors.white,
        ),
        onPressed: onSelected,
        child: Text(texto),
      ),
    );
  }
}
