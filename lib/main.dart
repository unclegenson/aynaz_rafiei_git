import 'package:aynaz_rafiei_sadr3/mobile.dart';
import 'package:aynaz_rafiei_sadr3/tablet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MobileScreen(width: constraints.maxWidth);
        } else {
          return TabletScreen(width: constraints.maxWidth);
        }
      },
    );
  }
}
