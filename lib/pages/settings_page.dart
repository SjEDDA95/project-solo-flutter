import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_x_clone/components/my_settings_tile.dart';
import 'package:twitter_x_clone/themes/theme_provider.dart';

/*

Paramètres de l'application et du profil au global

-Dark mode
-Utilisateurs bloqués
-Paramètres du profil

 */

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      //AppBar
      appBar: AppBar(
        title: const Text("Paramètres"),
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      //Body
      body: Column(
        children: [
          // Dark mode tile
          MySettingsTile(
            title: "Dark Mode",
            action: CupertinoSwitch(
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
            ),
          ),

          // Blocked users

          // Account settings
        ],
      ),
    );
  }
}
