import 'package:example.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // Interactivity
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Example()),
    );
  }
}
