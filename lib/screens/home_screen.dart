import 'package:flutter/material.dart';
import 'package:posterer/screens/template_screen.dart';

class UserHomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const UserHomeScreen({
    super.key,
  });

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Home'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to SelectTemplateScreen
              Navigator.pushNamed(context, SelectTemplateScreen.id);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Set button color
              minimumSize: const Size(150, 50), // Set button size
            ),
            child: const Text(
              'Generate Poster',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
