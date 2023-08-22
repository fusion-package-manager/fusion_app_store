import 'package:flutter/material.dart';

void main() {
  runApp(const FusionAppStore());
}

class FusionAppStore extends StatelessWidget {
  const FusionAppStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
