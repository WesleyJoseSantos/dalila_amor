import 'dart:async';

import 'package:dalila_amor/congratulations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dalila Amorzinho',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Dalila Amorzinho'),
        '/congrat': (context) => const CongratPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // var _date = DateTime(2022, 05, 16);
    var _date = DateTime(2022, 05, 15, 14, 50);
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer){
      var _now = DateTime.now();
      var _diff = _date.toUtc().millisecondsSinceEpoch - _now.toUtc().millisecondsSinceEpoch;
      setState(() {
        _counter = _diff ~/ 1000;
        if(_counter <= 0){
          timer.cancel();
          Navigator.pushNamed(context, '/congrat');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.favorite),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contagem Regressiva:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
