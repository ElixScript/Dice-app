import 'package:flutter/material.dart';
import 'package:flutter_udemy/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Colors.indigo
        ),
      ),
    ),
  );
}