import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(primarySwatch: Colors.teal),
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
      backgroundColor: Colors.teal[100],
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
                const CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.person),
                ),
                const SizedBox(height: 12),
                const Text("Abdoulaye Traoré",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text("Software Engineer",
                    style: TextStyle(color: Colors.grey[700])),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _toggleContact,
                  child: Text(_showContact ? "Hide Contact" : "Show Contact"),
                ),
                if (_showContact) ...[
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone, color: Colors.teal),
                      SizedBox(width: 8),
                      Text("+231 77 777 77 77"),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.email, color: Colors.teal),
                      SizedBox(width: 8),
                      Text("abdoulaye@example.com"),
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
}
