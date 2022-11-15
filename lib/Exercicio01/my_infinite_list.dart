import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio01/infinite_list.dart';
import 'package:flutter_exercicio_07/Exercicio01/resources/strings.dart';

class MyInfiniteList extends StatelessWidget {
  const MyInfiniteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF08E0BC),
        title: const Text(Strings.appName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0XFF016655))),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1000,
              itemBuilder: (context, index) {
                return InfiniteListCell(
                  index: index + 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
