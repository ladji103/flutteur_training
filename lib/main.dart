import 'package:flutter/material.dart';
import 'package:maxit_olib_training/contact-management/contact.page.dart';
import 'package:maxit_olib_training/pages/navigation.page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter training",
      // theme: ThemeData(
      //   primaryColor: Col
      // ),
      home: ContactListPage(),
    );
  }
}
