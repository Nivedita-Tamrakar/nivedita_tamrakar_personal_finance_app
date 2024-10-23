import 'package:flutter/material.dart';
import 'package:nivedita_tamrakar_personal_finance_app/ui/screens/transectionListScreen.dart';

class Transactionhistory extends StatefulWidget {
  const Transactionhistory({super.key});

  @override
  State<Transactionhistory> createState() => _TransactionhistoryState();
}

class _TransactionhistoryState extends State<Transactionhistory> {
  final List<String> categories = ['Shopping', 'Bills', 'Groceries', 'Entertainment', 'Transport','Vacation','Rent','Donation'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transection History"),
        backgroundColor: const Color.fromARGB(255, 155, 148, 202),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.5, // Adjust as needed
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the ListView screen with the selected category
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionListScreen(category: categories[index]),
                ),
              );
            },
            child: Card(
              color: const Color.fromARGB(255, 155, 148, 202),
              child: Center(
                child: Text(
                  categories[index],
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}