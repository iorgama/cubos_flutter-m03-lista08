import 'package:flutter/material.dart';

class DayCell extends StatelessWidget {
  const DayCell({
    Key? key,
    required this.reservation,
    required this.index,
  }) : super(key: key);

  final List<int> reservation;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: reservation.contains(index)
          ? const Color(0xffD45552)
          : const Color(0xffE5DFDF),
      child: Text(
        '${index + 1}',
        style: TextStyle(
          color: reservation.contains(index)
              ? Colors.white
              : const Color(0xff9C3A58),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
