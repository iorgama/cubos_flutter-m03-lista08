import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.home_outlined,
          color: color,
          size: 65,
        ),
        Column(
          children: [
            Text(
              'Sweet Home'.toUpperCase(),
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 2,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'O que você gostaria de monitorar?',
              style: TextStyle(
                fontSize: 18,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
