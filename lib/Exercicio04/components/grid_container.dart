import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({
    Key? key,
    required this.select,
    required this.selectColor,
    required this.commonColor,
    required this.icons,
    required this.primaryColor,
    required this.features,
    required this.index,
  }) : super(key: key);

  final int select;
  final Color commonColor;
  final Color selectColor;
  final List icons;
  final Color primaryColor;
  final List features;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(8),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: select == index ? selectColor : commonColor,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icons[index],
            color: primaryColor,
            size: 44,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            features[index],
            style: TextStyle(
              fontSize: 20,
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
