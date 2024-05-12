/*
  Authored by: James Gabriel Verceluz
  Company: FullTank INC.
  Project: FullTank
  Feature: [FTNK-001] Splash Screen
  Description: This screen will display once the user opens the application.
              The user will be greeted with the theme of our company and the
              name of the application.
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {

  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
  with SingleTickerProviderStateMixin{
  @override

  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 2, 230, 255),
              Color.fromARGB(255, 10, 92, 255)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('lib/assets/logo.png'), 
              height: 180,
              width: 360,
              color: Colors.white,
            ),
            SizedBox(height: 20),
          ]
        ),
      ),
    );
  }
}