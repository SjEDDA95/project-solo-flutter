import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

/*

Register page ou on aura les éléments d'inscription de l'utilisateur

--------------------------------------------------------------------

Un utilisateur va venir remplir les informations et créer son compte.

Les données dont on a besoin venant de l'utilisateur sont :

- Nom
- Email
- Mot de passe
- Confirmation de Mot de passe

--------------------------------------------------------------------

Une fois que l'utilisateur est enregistré on le redirige vers la home page

Et aussi si ils ont déjà un compte on les redirige vers login page d'ici

 */

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text controllers pour les champs
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // BUILD UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      // Body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // Logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 72,
                  color: Theme.of(context).colorScheme.primary,
                ),

                const SizedBox(height: 50),
                // Bon retour message
                Text(
                  "Créons votre compte !",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: nameController,
                  hintText: "Entrez votre nom",
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                // Email Input
                MyTextField(
                  controller: emailController,
                  hintText: "Entrez votre adresse mail",
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                // Password Input
                MyTextField(
                  controller: passwordController,
                  hintText: "Entrez votre mot de passe",
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: confirmPwController,
                  hintText: "Confirmez votre mot de passe",
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                // Login button
                MyButton(
                  text: "Inscrivez-vous",
                  onTap: () {},
                ),
                const SizedBox(height: 25),
                // Déja un membre ? Connectez-vous !
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Déjà un membre ?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Connectez-vous !",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                )
                // Register button redirect to page
              ],
            ),
          ),
        ),
      ),
    );
  }
}
