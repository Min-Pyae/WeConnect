import 'package:flutter/material.dart';
import 'package:we_connect/pages/settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("P R O F I L E"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingsPage())
              );
            }, 
            icon: const Icon(Icons.settings)
          )
        ],
      ),
    );
  }
}