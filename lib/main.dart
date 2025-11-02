import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_provider.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tugas Minggu 07',
        home: HomePage(),
      ),
    );
  }
}
