import 'package:assignment_16/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Assignment16());
}

class Assignment16 extends StatelessWidget {
  const Assignment16({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
