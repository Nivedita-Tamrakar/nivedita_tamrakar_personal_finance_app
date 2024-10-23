import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/screens/homescreen.dart';

void main() {
  runApp(const 
  ProviderScope(child: PersonalFinanceManager()));
}

class PersonalFinanceManager extends ConsumerStatefulWidget {
  const PersonalFinanceManager({super.key});

  @override
  ConsumerState<PersonalFinanceManager> createState() => _PersonalFinanceManagerState();
}

class _PersonalFinanceManagerState extends ConsumerState<PersonalFinanceManager> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}