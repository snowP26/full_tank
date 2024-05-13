// Used resources:
//  https://www.geeksforgeeks.org/flutter-design-sample-registration-page/
//  https://medium.com/@flutterdynasty/login-signup-page-design-with-code-c593e7c82a4c
//  https://www.freecodecamp.org/news/how-to-build-a-simple-login-app-with-flutter/
//  https://www.youtube.com/watch?v=QXFajIS6leg
//  https://www.youtube.com/watch?v=xDiHqmO23Qo
//  https://stackoverflow.com/questions/50171766/flutter-pub-expected-a-key-while-parsing-a-block-mapping-path
/*
  Authored by: Jamarcus JanGavril C. Mariano
  Company: Fulltank INC.
  Project: FullTank
  Feature: [FTNK-002] Registration Screen
  Description: This screen will be displayed once the user presses the Sign Up button 	
              located in the Login Screen. The user will encounter text fields to input the 	
              required credentials in order for them to sign up their accounts. 
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FullTank Registration', // App Title
      theme: ThemeData(
        useMaterial3: true, // Enables Material 3 design
      ),
      home: const RegistrationPage(),
      debugShowCheckedModeBanner: false, // Removes debug banner
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState(); // creates state for Registration Page
}

class _RegistrationPageState extends State<RegistrationPage> {
  // text editing controllers for input fields
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController reenterpasswordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(193, 249, 255, 1), // background color of the page
      body: Container(
        padding: const EdgeInsets.all(30), // padding for the container
        child: ListView(
          children: [
            const Text('Back'), // back label for "Back" button
            const SizedBox(height: 25), // empty space
            const Text('First name'), // first name label
            const SizedBox(height: 5), // empty space
            // text field design for first name
            TextField(
              style: const TextStyle(height: 0.25, color: Colors.black),
              controller: firstnameController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(height: 20), // empty space
            const Text('Last name'), // last name label
            const SizedBox(height: 5), // empty space
            // text field design for last name
            TextField(
              style: const TextStyle(height: 0.25, color: Colors.black),
              controller: lastnameController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(height: 20), // empty space
            const Text('Email'), // email label
            const SizedBox(height: 5), // empty space
            // text field design for email
            TextField(
              style: const TextStyle(height: 0.25, color: Colors.black),
              controller: emailController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20), // empty sapce
            const Text('Password'), // password label
            const SizedBox(height: 5), // empty space
            // text field design for password
            TextField(
              style: const TextStyle(height: 0.25, color: Colors.black),
              controller: passwordController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.visiblePassword, // the keyboard will typically show a "Show Password" button when this keyboard type is set. However, a function is needed to toggle its state
              obscureText: true, // censors the inputted password 
            ),
            const SizedBox(height: 20), // empty space
            const Text('Re-enter password'), // re-enter password label
            const SizedBox(height: 5), // empty space
            // text field design for re-enter password
            TextField(
              style: const TextStyle(height: 0.25, color: Colors.black),
              controller: reenterpasswordController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.visiblePassword, // the keyboard will typically show a "Show Password" button when this keyboard type is set. However, a function is needed to toggle its state
              obscureText: true, // censors the inputted password
            ),
            const SizedBox(height: 20), // empty space
            const Text('Contact number'), // contact number label
            const SizedBox(height: 5), // empty space
            // text field design for contact number
            TextField(
              style: const TextStyle(height: 0.25, color: Colors.black),
              controller: numberController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              keyboardType: TextInputType.number, // user can only use numpad keys
            ),
            const SizedBox(height: 40), // empty space
            const SignUpButton(), // sign up button
            const SizedBox(height: 20), // empty space
            const Socials(), // social media accounts
          ],
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      }, // onTap function is yet to be implemented
      child: Container(
        alignment: Alignment.center, // center alignment of child widget
        height: 55, // sets height of container
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 18, 109, 137), // sets the background color of container to blue 
          borderRadius: BorderRadius.circular(6.0), // rounds the corner of the container
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // add a shadow to the container 
              blurRadius: 10, // sets the blur radius of the shadow
            ),
          ],
        ),
        child: const Text(
          'Sign Up', // sign up label on the button
          style: TextStyle(
            color: Colors.white, // sets color to white
            fontWeight: FontWeight.w600, // sets font weight to 600
          ),
        ),
      ),
    );
  }
}

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center, // center alignment of child widget
          child: const Text(
            '--- Sign up with ---',
            style: TextStyle(
              color: Colors.black54, 
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15), // empty space 
        Row(
          children: [
            //google icon
            Expanded(
              child: Container(
                alignment: Alignment.center, // center alignment of child widget
                height: 55, 
                decoration: BoxDecoration(
                  color: Colors.white, // sets background color of the container to white 
                  borderRadius: BorderRadius.circular(6), // rounds the cornerns of the container 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1), // adds shadow to the container 
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'lib/assets/google.svg', // path to the google svg icon 
                  height: 30, // sets the height of the icon
                ),
              ),
            ),

            const SizedBox(width: 15), // empty space

            //facebook icon
            Expanded(
              child: Container(
                alignment: Alignment.center, // center alignment of child widget
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white, // sets background color of the container to white
                  borderRadius: BorderRadius.circular(6), // rounds the cornerns of the container 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1), // adds shadow to the container
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'lib/assets/facebook.svg', // path to the facebook svg icon 
                  height: 30, // sets the height of the icon
                ),
              ),
            ),

            const SizedBox(width: 15), // empty space

            //instagram icon
            Expanded(
              child: Container(
                alignment: Alignment.center, // center alignment of child widget
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white, // sets background color of the container to white
                  borderRadius: BorderRadius.circular(6), // rounds the cornerns of the container 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1), // adds shadow to the container
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'lib/assets/instagram.svg', // path to the instagram svg icon 
                  height: 30, // sets the height of the icon
                ),
              ),
            ),

            const SizedBox(width: 15), // empty space

            //twitter icon
            Expanded(
              child: Container(
                alignment: Alignment.center, // center alignment of child widget
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white, // sets background color of the container to white
                  borderRadius: BorderRadius.circular(6), // rounds the cornerns of the container 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1), // adds shadow to the container
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'lib/assets/twitter.svg', // path to the twitter svg icon 
                  height: 30, // sets the height of the icon
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}