import 'package:flutter/material.dart';
import 'package:teste_mepoupe_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Teste Me Poupe!', home: HomePage());
  }
}
