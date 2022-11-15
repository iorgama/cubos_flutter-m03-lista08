import 'package:flutter/material.dart';

class InfiniteListCell extends StatelessWidget {
  final int index;
  const InfiniteListCell({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: const Color(0XFFEEEEEE),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: ListTile(
        leading: const Icon(
          Icons.star,
          color: Color(0xffFFC003),
          size: 30,
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text(
            'Item nº: $index',
            style: const TextStyle(
              fontSize: 22,
              color: Color(0xfff28685d),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
