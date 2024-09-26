import 'package:flutter/material.dart';
import 'package:twitter_x_clone/pages/login_page.dart';
import 'package:twitter_x_clone/pages/register_page.dart';

/*

Service d'authentification qui va nous permettre de gérer les login et register

Le service va déterminer si on affiche la login page ou la register page

 */

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // Initialement, on veut toujours montrer la Login page
  bool showLoginPage = true;
  // Toggle entre loginpage et registerpage
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage();
    } else {
      return RegisterPage();
    }
  }
}
