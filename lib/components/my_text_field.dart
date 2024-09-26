import 'package:flutter/material.dart';

/*

Une boite ou l'utilisateur peut écrire

Pour utiliser la widget textfield, on a besoin de :

- textcontroller (pour accéder aux éléments qu'écrit l'utilisateur)
- hint text (par exemple : "Entrez votre email ici")
- obscure text (par exemple : true ou false ==> Donc si c'est true, on cache le MDP)

 */

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        // La bordure quand elle est non sélectionnée
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).colorScheme.inversePrimary),
          borderRadius: BorderRadius.circular(12),
        ),
        // La bordure quand elle est sélectionnée
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: Theme.of(context).colorScheme.secondary,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
