import 'package:flutter/material.dart';
import 'package:twitter_x_clone/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';

/*

DRAWER

Menu s'affichant à gauche de l'application

Le menu contient 5 options dans ce cas ci :

Home
Profile
Search
Settings
Logout

 */

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // UI Création
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              // Logo de l'application
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(
                  Icons.person,
                  size: 72,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(height: 10),

              // Divider line
              Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),

              // Home
              MyDrawerTile(
                title: "Accueil",
                icon: Icons.home,
                onTap: () {
                  // pop le menu vu qu'on est déjà sur la home page
                  Navigator.pop(context);
                },
              ),
              // Profile
              MyDrawerTile(
                title: "Profile",
                icon: Icons.person_2_sharp,
                onTap: () {},
              ),
              // Search
              MyDrawerTile(
                title: "Rechercher",
                icon: Icons.search,
                onTap: () {},
              ),
              // Settings
              MyDrawerTile(
                title: "Paramètres",
                icon: Icons.settings,
                onTap: () {
                  // pop le menu drawer
                  Navigator.pop(context);
                  // Naviguer a la page de paramètres
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
              ),
              // Logout
              MyDrawerTile(
                title: "Déconnexion",
                icon: Icons.logout,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
