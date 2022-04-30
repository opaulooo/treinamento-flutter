// ignore_for_file: unnecessary_const

import 'package:bugprojteste/my-icons.dart';
import 'package:bugprojteste/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const colors = const AppColors();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bug',
      theme: ThemeData(
        scaffoldBackgroundColor: colors.bugware_clara,
      ),
      home: const MyHomePage(
        title: 'App Treinamento BugWare',
      ),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: colors.bugware_clara,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Você deu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                ' $_counter ',
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const Text('cliques!',
                  style: const TextStyle(color: Colors.white, fontSize: 25)),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton.extended(
            onPressed: _incrementCounter,
            tooltip: 'Adicionar',
            label: const Text('Adicionar'),
            hoverElevation: 200,
            elevation: 15,
            autofocus: true,
            focusElevation: 10,
            // icon: const Icon(MyIcons.bugware, size: 25),
            backgroundColor: colors.bugware,
            // shape: StadiumBorder(side: BorderSide(color: colors.bugware, width: 2)),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 10.0),
          ),
          FloatingActionButton.extended(
            onPressed: _incrementCounter,
            tooltip: 'Remover',
            label: const Text('Remover'),
            hoverElevation: 200,
            elevation: 15,
            autofocus: true,
            focusElevation: 10,
            // icon: const Icon(MyIcons.bugware, size: 25),
            backgroundColor: colors.bugware,
            // shape: StadiumBorder(side: BorderSide(color: colors.bugware, width: 2)),
          )
        ]));
  }
}
