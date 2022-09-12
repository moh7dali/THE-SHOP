import 'package:flutter/material.dart';

class Pc extends StatefulWidget {
  const Pc({super.key});

  @override
  State<Pc> createState() => _PcState();
}

class _PcState extends State<Pc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Pc"),
      ),
    );
  }
}
