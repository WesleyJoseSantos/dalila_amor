import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({ Key? key }) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  String message = 
  '''''';

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Colors.black;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Feliz Aniversário Amorzinho!!!', style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Amorzinho!!!', style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ],
              ),
            )));
  }
}