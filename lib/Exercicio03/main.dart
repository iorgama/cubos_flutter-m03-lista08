import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio03/my_rainbow.dart';

void main() => runApp(const MyRainbowApp());

class MyRainbowApp extends StatelessWidget {
  const MyRainbowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //debugShowCheckedModeBanner: true,
      home: MyRainbow(),
    );
  }
}
