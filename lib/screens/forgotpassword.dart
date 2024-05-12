/* 
  Authored by: Almond Nicholas Turiano
  Company: FullTank Inc.
  Project: FullTank
  Feature: [FLTNK009] Forgot Password page
  Description: Forgot password - enter email or phone number screen
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontFamily: 'San Francisco',
      fontSize: 16.0,
      color: Colors.black,
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: DefaultTextStyle(
          style: textStyle,
          child: Stack(
            children: [
              Positioned(
                top: 40,
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    // Handle back button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text('Back'),
                  ),
                ),
              ),
              const Positioned(
                top: 100,
                left: 20,
                right: 20,
                child: Center(
                  child: Text(
                    'Enter your email or cellphone number for which a verification code will be sent to.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 20,
                right: 20,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email'),
                      const SizedBox(height: 10),
                      Container(
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: '',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Center(child: Text('or')),
                      const SizedBox(height: 10),
                      const Text('Cellphone number'),
                      const SizedBox(height: 10),
                      Container(
                        color: Colors.white,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: '',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 33, 71, 92)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text('SEND CODE'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}