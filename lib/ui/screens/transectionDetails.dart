import 'package:flutter/material.dart';

class Transectiondetails extends StatefulWidget {
  const Transectiondetails({super.key});

  @override
  State<Transectiondetails> createState() => _TransectiondetailsState();
}

class _TransectiondetailsState extends State<Transectiondetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Details"),
        backgroundColor: const Color.fromARGB(255, 155, 148, 202),
      ),
    );
  }
}