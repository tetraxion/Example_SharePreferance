import 'package:flutter/material.dart';
import 'package:praktikum_pertemuan_10/Home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pencatat Ikan',
      home: HomePage(),
    );
  } 
}
