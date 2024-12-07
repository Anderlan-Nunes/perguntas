import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto':'Preto', 'notas': 15},
        {'texto':'Vermelho', 'notas':5},
        {'texto':'Prata', 'notas':3},
        {'texto':'Branco', 'notas': 12},
   ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'cao', 'notas': 02},
        {'texto': 'lobo', 'notas': 18},
        {'texto': 'cat', 'notas': 7},
      ]
    },
    {
      'texto': 'Qual é o sua comida?',
      'respostas': [
        {'texto':'pao', 'notas': 2},
        {'texto':'bolo', 'notas': 20},
        {'texto':'chocolat', 'notas': 31 },
      ]
    }
  ];

  void _quandoResponder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _quandoResponder)
              : const Resultado(),
        ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
/**
 * Sobre o "const", o Flutter pede para que você marque como "const" tudo que não é variável no seu código, desde variáveis até widgets inteiros. Basicamente é isso, como o widget da linha 4 não recebe nenhum parâmetro mutável, ele é constante, logo, o código pede a marcação "const" no início.

Essa "super.key" se trata de uma chave única que todo widget possui que serve pra localizar ele dentro da árvore de widgets em que o Flutter trabalha, antes era algo mais implícito por isso não aparecia, mas atualmente ao criar qualquer widget essa chave é criada de forma explicíta também.

Já o "override" se trata de algo relacionada a Orientação a Objeto e também se relaciona com o "extends". Pode ficar um pouco confuso, mas você vai entender melhor durante o curso. No seu print, por exemplo, a classe "PerguntaApp" está herdando da classe "StatelessWidget" através do "extends". Ao utilizar o método "build" da linha 11 dentro do "PerguntaApp" é necessário usar o "override" por conta que esse método já existe dentro da classe "StatelessWidget", então para poder utilizar algo que já existe e foi herdado através do "extends" você precisa usar o "override" para sobreescrever aquele método que já existia e poder usar da forma como você quer.
 */

/**
 *             Questao(perguntas[perguntaSelecionada]),
            // isso é uma class um widiget(component) que eu chamo o construtor passando parametros para ela
            ElevatedButton(
              onPressed:
                  responder, // exite um diferenca entre chamar uma função ou passar ela como passar metodo responder() como parametro tira o ()
              child: const Text('Resposta 1'),
            ),
 */