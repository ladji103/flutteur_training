import 'package:flutter/material.dart';
import 'package:maxit_olib_training/models/contact.model.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  _AddContactPageState createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String phone = '';
  String email = '';

  void _saveContact() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final newContact = Contact(name: name, phone: phone, email: email);
      Navigator.pop(context, newContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Contact')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              onSaved: (value) => name = value ?? '',
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter name' : null,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Phone'),
              onSaved: (value) => phone = value ?? '',
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter phone' : null,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
              onSaved: (value) => email = value ?? '',
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter email' : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveContact,
              child: const Text('Save'),
            )
          ]),
        ),
      ),
    );
  }
}
