import 'package:flutter/material.dart';

import '../constants/color.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(primarySwatch: CustomColor.primary),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _showContact = false;

  void _toggleContact() {
    setState(() {
      _showContact = !_showContact;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("Profile Card")),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 8,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: CustomColor.primary,
                  child: const Icon(Icons.person),
                ),
                const SizedBox(height: 12),
                const Text("Abdoulaye Traoré",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text("Software Engineer",
                    style: TextStyle(color: Colors.grey[700])),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          CustomColor.primary)),
                  onPressed: _toggleContact,
                  child: Text(_showContact ? "Hide Contact" : "Show Contact"),
                ),
                if (_showContact) ...[
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: CustomColor.primary),
                      const SizedBox(width: 8),
                      const Text("+231 77 777 77 77"),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: CustomColor.primary),
                      const SizedBox(width: 8),
                      const Text("abdoulaye.traore@orangemali.com"),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  get _color {
    return Colors.amber.shade900;
  }
}
