
import 'package:flutter/material.dart';

class TransactionListScreen extends StatelessWidget {
  final String category;

  const TransactionListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Sample data for the list view
    final List<String> transactions = [
      'Transaction 1',
      'Transaction 2',
      'Transaction 3',
      'Transaction 4',
      'Transaction 5',
      'Transaction 6',
      'Transaction 7',
      'Transaction 8',
      'Transaction 9',

    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("$category Transactions"),
        backgroundColor: const Color.fromARGB(255, 155, 148, 202),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(transactions[index]),
          );
        },
      ),
    );
  }
}

