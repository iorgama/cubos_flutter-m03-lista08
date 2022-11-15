import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 120,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.arrow_drop_up,
                color: Colors.indigo,
                size: 100,
              ),
              Icon(
                Icons.arrow_drop_up,
                color: Colors.indigo,
                size: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.remove_red_eye_outlined,
                size: 60,
              ),
              Icon(
                Icons.arrow_downward_rounded,
                size: 60,
              ),
              Icon(
                Icons.remove_red_eye_outlined,
                size: 60,
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.all(20),
              child: GridView.count(
                crossAxisCount: 6,
                //criamos seis colunas
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                childAspectRatio: 0.5,
                children: List.generate(12, (index) {
                  return Container(
                    color: Colors.amber.shade100,
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            width: double.infinity,
            height: 120.0,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
