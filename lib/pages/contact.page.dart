import 'package:flutter/material.dart';
import 'package:maxit_olib_training/models/contact.model.dart';
import 'package:maxit_olib_training/pages/contact_detail.page.dart';

import 'add_contact.page.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<Contact> contacts = [
    Contact(
        name: 'Alice Johnson',
        phone: '123-456-7890',
        email: 'alice@example.com'),
    Contact(name: 'Bob Smith', phone: '234-567-8901', email: 'bob@example.com'),
    Contact(
        name: 'Charlie Davis',
        phone: '345-678-9012',
        email: 'charlie@example.com'),
  ];

  void _addContact(Contact contact) {
    setState(() {
      contacts.add(contact);
    });
  }

  void _openAddContactPage() async {
    final newContact = await Navigator.push<Contact>(
      context,
      MaterialPageRoute(builder: (_) => const AddContactPage()),
    );

    if (newContact != null) {
      _addContact(newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(child: Text(contact.name[0])),
            title: Text(contact.name),
            subtitle: Text(contact.phone),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ContactDetailPage(contact: contact),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddContactPage,
        child: const Icon(Icons.add),
        tooltip: 'Add Contact',
      ),
    );
  }
}
