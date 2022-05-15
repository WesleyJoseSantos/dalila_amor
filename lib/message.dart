import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final message =
'''O céu noturno, certamente é uma das formas mais 
belas que o universo possui, de materializar diante 
dos nossos olhos uma lição de humildade. Não é 
incomum ao admirarmos sua grandeza, sermos 
mergulhados em um sentimento de insignificância. 
E se pensarmos bem, é inconvebíbel o quão 
pequenos somos. Dificilmente iremos alcançar 
na nossa consciência a proporção adequada. Quando 
olho para ti, tenho esse mesmo sentimento. Mas é 
ainda mais incrível. O céu noturno é belo, mas 
para mim é inalcancável. Então, estar próximo de ti 
e poder te tocar, é algo simplismente inexplicável.
Se imagine podendo tocar o céu com suas mãos.Então, 
se existe alguem nesse mundo que agradeçe do fundo 
da alma que mais um ano da sua vidase completa, sou 
eu. Você sempre está nos meus pensamentos. Desejo 
a ti tudo aquilo que você merece, e pode ter certeza 
que para mim o céu é pequeno perto de ti.''';

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Colors.black;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Feliz Aniversário Amorzinho!!!',
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/amor.jpg',
                          filterQuality: FilterQuality.high,
                          isAntiAlias: true,
                          height: 500,
                          width: 500,
                        ),
                        Text(message,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 30)),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
