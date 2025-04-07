import 'package:flutter/material.dart';
import 'package:maxit_olib_training/pages/contact.page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter training",
      home: ContactListPage(),
    );
  }
}
