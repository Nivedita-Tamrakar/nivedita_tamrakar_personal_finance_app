import 'package:flutter/material.dart';

class Transactionhistory extends StatefulWidget {
  const Transactionhistory({super.key});

  @override
  State<Transactionhistory> createState() => _TransactionhistoryState();
}

class _TransactionhistoryState extends State<Transactionhistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transection History"),
        backgroundColor: const Color.fromARGB(255, 155, 148, 202),
      ),
    );
  }
}