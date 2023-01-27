import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_p.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'ACT. Suplementaria',
        debugShowCheckedModeBanner: false,
        home: HomePAge());
  }
}
