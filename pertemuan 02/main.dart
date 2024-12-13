import 'package:flutter/material.dart';
import 'checkbox02.dart'; // Pastikan file ini ada dan nama kelasnya benar.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Perbaikan pada penutup kurung kurawal.

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Widget',
      home: Checkbox02(), // Pastikan nama kelas sesuai dengan yang ada di 'contohstalesswidget.dart'
    );
  }
}
