import 'package:flutter/material.dart';

/*

DRAWER TILE COMPONENT

Les éléments présents dans le Drawer

Pour utiliser cette widget, on a besoin de :

- title( "Home" )
- icon ( Icons.Home )
- function ( goToHomePage() )

 */

class MyDrawerTile extends StatelessWidget {
  // On fait ca ici pour rendre le tout dynamique (on veut pas Home partout etc..)
  final String title;
  final IconData icon;
  final void Function() onTap;

  const MyDrawerTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  // UI Build
  @override
  Widget build(BuildContext context) {
    // Les éléments à display
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
      ),
      onTap: onTap,
    );
  }
}
