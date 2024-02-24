import 'package:flutter/material.dart';
import 'package:posterer/screens/home_screen.dart';
import 'package:posterer/screens/login_screen.dart';
import 'package:posterer/screens/poster_generate.dart';
import 'package:posterer/screens/template_screen.dart';

void main() {
  runApp(const UserApp());
}

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Posterer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: UserLoginScreen.id,
      routes: {
        UserLoginScreen.id: (context) => const UserLoginScreen(),
        UserHomeScreen.id: (context) => const UserHomeScreen(),
        SelectTemplateScreen.id: (context) => const SelectTemplateScreen(),
        PosterGenerationScreen.id: (context) => const PosterGenerationScreen(
              templateName: 'templateNames[index]',
            ),
      },
    );
  }
}
