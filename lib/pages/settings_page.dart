import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_connect/components/wc_settings_tile.dart';
import 'package:we_connect/themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Theme Provider
    final themeProvider = context.read<ThemeProvider>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          // Dark Mode Button
          WcSettingsTile(
            title: "Dark Mode",
            action: CupertinoSwitch(
              value: themeProvider.isDarkMode,
              onChanged: (value) => themeProvider.toggleTheme(),
            ),
          )
        ],
      ),
    );
  }
}
