import 'package:flutter/material.dart';

class Moneytransfer extends StatefulWidget {
  const Moneytransfer({super.key});

  @override
  State<Moneytransfer> createState() => _MoneytransferState();
}

class _MoneytransferState extends State<Moneytransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tranfered Money"),
        backgroundColor: const Color.fromARGB(255, 155, 148, 202),
      ),
    );
  }
}