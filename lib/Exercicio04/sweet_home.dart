import 'package:flutter/material.dart';
import 'package:flutter_exercicio_07/Exercicio04/components/grid_container.dart';
import 'package:flutter_exercicio_07/Exercicio04/components/heading.dart';
import 'package:flutter_exercicio_07/Exercicio04/resources/strings.dart';

class SweetHome extends StatefulWidget {
  const SweetHome({Key? key}) : super(key: key);

  @override
  State<SweetHome> createState() => _SweetHomeState();
}

class _SweetHomeState extends State<SweetHome> {
  int select = -1;

  final List<Map<String, Color>> colors = [
    {
      'light': const Color(0x5535638F),
      'dark': const Color(0xFF232323),
    },
    {
      'light': const Color(0xFFc9c9c9),
      'dark': const Color(0xFF1B446B),
    },
    {
      'light': const Color(0x55214B72),
      'dark': const Color(0x55214B72),
    },
    {
      'light': const Color(0x55F9F9F9),
      'dark': const Color(0x9935638F),
    },
    {
      'light': const Color(0xFF1B446B),
      'dark': const Color(0x99F9F9F9),
    },
  ];

  List icons = [
    Icons.lightbulb_outline_rounded,
    Icons.thermostat_rounded,
    Icons.water,
    Icons.security_rounded,
    Icons.wifi_rounded,
    Icons.tv_rounded,
  ];

  List features = [
    "luzes",
    "temperatura",
    "lavadora",
    "segurança",
    "wifi",
    "televisor",
  ];
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 85, 25, 85),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              colors[0][isDark ? 'dark' : 'light']!,
              colors[1][isDark ? 'dark' : 'light']!,
            ],
          ),
        ),
        child: Column(
          children: [
            Heading(
              color: colors[4][isDark ? 'dark' : 'light']!,
            ),
            GridView.count(
              childAspectRatio: 1.2,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              shrinkWrap: true,
              children: List.generate(
                6,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        select = index;
                      });
                    },
                    child: GridContainer(
                        select: select,
                        selectColor: colors[3][isDark ? 'dark' : 'light']!,
                        commonColor: colors[2][isDark ? 'dark' : 'light']!,
                        icons: icons,
                        primaryColor: colors[4][isDark ? 'dark' : 'light']!,
                        features: features,
                        index: index),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  isDark ? Strings.LightMode : Strings.DarkMode,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: colors[4][isDark ? 'dark' : 'light']!,
                  ),
                ),
                Switch(
                  activeColor: colors[2][isDark ? 'dark' : 'light']!,
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark ? isDark = false : isDark = true;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
