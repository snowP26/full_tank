/*
  Authored by: Ryann Philippe Balunso
  Company: FullTank INC.
  Project: FullTank
  Feature: [FTNK-002] Verfication page
  Description: This screen will display to ask the user for input from the verification code they received.
 */

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'src/constants/text/strings.dart';

void main() {
  runApp(const OTPScreen());
}

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    
    return MaterialApp(

      home: Scaffold(

      backgroundColor: Colors.grey[300], // Set background color to a slightly darker shade of gray
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 40.0),
            const Text("$tOtpMessage favnialmond@raider.com", textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 5,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
            ),
          ],
        ),
      ),
    )

    );
  }
}