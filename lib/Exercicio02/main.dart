import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio02/my_grid.dart';

void main() => runApp(const MyGridApp());

class MyGridApp extends StatelessWidget {
  const MyGridApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyGrid(),
    );
  }
}
