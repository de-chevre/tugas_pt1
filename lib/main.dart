import 'package:flutter/material.dart';
import 'package:tugas_pt1/tugas3/katalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TUTOR FLUTTER',
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: 'PlayFair'),
      home: const KatalogMenu(),
    );
  }
}
