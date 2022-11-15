import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio03/resources/strings.dart';

class MyRainbow extends StatelessWidget {
  const MyRainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Center(
          child: Text(
            Strings.AppName,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 16,
        itemBuilder: (context, i) {
          return Row(
            children: const [
              RainbowCell(
                name: 'Vermelho',
                colour: Colors.red,
              ),
              RainbowCell(
                name: 'Laranja',
                colour: Colors.orange,
              ),
              RainbowCell(
                name: 'Amarelo',
                colour: Colors.yellow,
              ),
              RainbowCell(
                name: 'Verde',
                colour: Colors.green,
              ),
              RainbowCell(
                name: 'Azul',
                colour: Colors.blue,
              ),
              RainbowCell(
                name: 'Anil',
                colour: Colors.indigo,
              ),
              RainbowCell(
                name: 'Violeta',
                colour: Colors.purple,
              ),
            ],
          );
        },
      ),
    );
  }
}

class RainbowCell extends StatelessWidget {
  final String name;
  final Color colour;
  const RainbowCell({
    Key? key,
    required this.name,
    required this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: double.infinity,
      color: colour,
      child: Center(
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
