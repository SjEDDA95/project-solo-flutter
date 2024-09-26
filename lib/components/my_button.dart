import 'package:flutter/material.dart';

/*

Un simple bouton

Pour utiliser cette widget, on aura besoin :

- un text dans le bouton
- une fonction (ontap)

 */

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          // Couleur du bouton nan vraiman
          color: Theme.of(context).colorScheme.secondary,
          // Bordure courbé
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
