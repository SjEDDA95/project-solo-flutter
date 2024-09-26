import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_x_clone/pages/home_page.dart';
import 'package:twitter_x_clone/pages/login_page.dart';
import 'package:twitter_x_clone/pages/register_page.dart';
import 'package:twitter_x_clone/themes/dark_mode.dart';
import 'package:twitter_x_clone/themes/light_mode.dart';
import 'package:twitter_x_clone/themes/theme_provider.dart';

void main() {
  runApp(
    // On doit l'ajouter pour pouvoir utiliser le Provider
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
