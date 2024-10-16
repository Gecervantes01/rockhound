import 'package:flutter/material.dart';

import 'src/home.dart';
import 'src/constants/styling_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RockHound',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: secondaryBg),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
