import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_x_clone/components/my_button.dart';

import '../components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text controllers pour les champs
  final TextEditingController emailController = TextEditingController();
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
                  "Bon retour sur notre application !",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16),
                ),
                const SizedBox(height: 25),
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
                // Oublié le mot de passe
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 25),
                // Login button
                MyButton(
                  text: "Connectez-vous",
                  onTap: () {},
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pas de compte ?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Inscrivez-vous",
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
