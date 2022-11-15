import 'package:flutter/material.dart';
import 'hostel.dart';

void main() => runApp(const HostelApp());

class HostelApp extends StatelessWidget {
  const HostelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //debugShowCheckedModeBanner: true,
      home: Hostel(),
    );
  }
}
