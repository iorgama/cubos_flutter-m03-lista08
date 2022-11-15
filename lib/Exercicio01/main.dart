import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio01/my_infinite_list.dart';
import 'resources/strings.dart';

void main() => runApp(const MyInfiniteListApp());

class MyInfiniteListApp extends StatefulWidget {
  const MyInfiniteListApp({Key? key}) : super(key: key);

  @override
  State<MyInfiniteListApp> createState() => _MyInfiniteListAppState();
}

class _MyInfiniteListAppState extends State<MyInfiniteListApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Strings.appName,
      home: MyInfiniteList(),
    );
  }
}
