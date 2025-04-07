import 'package:flutter/material.dart';
import 'package:maxit_olib_training/models/contact.model.dart';

class ContactDetailPage extends StatelessWidget {
  final Contact contact;

  const ContactDetailPage({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(contact.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Phone:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(contact.phone),
            const SizedBox(height: 16),
            const Text('Email:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(contact.email),
          ],
        ),
      ),
    );
  }
}
