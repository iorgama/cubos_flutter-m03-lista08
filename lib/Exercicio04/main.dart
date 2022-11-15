import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio04/sweet_home.dart';

void main() => runApp(const SweetHomeApp());

class SweetHomeApp extends StatelessWidget {
  const SweetHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //debugShowCheckedModeBanner: true,
      home: SweetHome(),
    );
  }
}
