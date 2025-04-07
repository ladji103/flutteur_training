import 'package:flutter/material.dart';
import 'package:maxit_olib_training/contact-management/models/contact.model.dart';

class AddContactPage extends StatefulWidget {
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
      appBar: AppBar(title: Text('Add Contact')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              onSaved: (value) => name = value ?? '',
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter name' : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Phone'),
              onSaved: (value) => phone = value ?? '',
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter phone' : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              onSaved: (value) => email = value ?? '',
              validator: (value) =>
                  value == null || value.isEmpty ? 'Enter email' : null,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveContact,
              child: Text('Save'),
            )
          ]),
        ),
      ),
    );
  }
}
