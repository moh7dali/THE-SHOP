import 'package:flutter/material.dart';

class Laptops extends StatefulWidget {
  const Laptops({super.key});

  @override
  State<Laptops> createState() => _LaptopsState();
}

class _LaptopsState extends State<Laptops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Laptops"),
      ),
    );
  }
}
