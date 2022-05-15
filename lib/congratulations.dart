import 'package:flutter/material.dart';

class CongratPage extends StatefulWidget {
  const CongratPage({ Key? key }) : super(key: key);

  @override
  State<CongratPage> createState() => _CongratPageState();
}

class _CongratPageState extends State<CongratPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushNamed(context, '/message');
    });
  }

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
                    padding: EdgeInsets.all(20.0),
                    child: Text('Feliz Aniversário', style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/fireworks.gif',
                      filterQuality: FilterQuality.high,
                      isAntiAlias: true,
                      height: 500,
                      width: 800,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Amorzinho!!!', style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ],
              ),
            )));
  }
}