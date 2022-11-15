import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio05/resources/strings.dart';
import 'components/day_cell.dart';
import 'components/title_card.dart';

class Hostel extends StatefulWidget {
  const Hostel({Key? key}) : super(key: key);

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  List<int> reservation = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff901139),
        title: const Center(
          child: Text(
            Strings.appName,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Column(
        children: [
          const TitleCard(
            title: Strings.title,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
            child: GridView.count(
              childAspectRatio: 1,
              crossAxisCount: 7,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              shrinkWrap: true,
              children: List.generate(
                30,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (reservation.contains(index)) {
                          reservation.remove(index);
                        } else {
                          reservation.add(index);
                        }
                      });
                    },
                    child: DayCell(reservation: reservation, index: index),
                  );
                },
              ),
            ),
          ),
          const TitleCard(
            title: Strings.date,
          ),
        ],
      ),
    );
  }
}
