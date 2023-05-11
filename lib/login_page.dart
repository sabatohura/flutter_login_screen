// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: newMethod,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> get newMethod {
    return [
      Icon(
        Icons.android,
        size: 100,
      ),
      SizedBox(
        height: 50,
      ),
      // hello text
      Text(
        'Hello Again!',
        style: GoogleFonts.bebasNeue(fontSize: 36),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Welcome Back, You\'ve Been missed ",
        style: TextStyle(fontSize: 20),
      ),
      // email text field
      const SizedBox(
        height: 50,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: 'Email'),
            ),
          ),
        ),
      ),
      // password textv field
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Password'),
            ),
          ),
        ),
      ),

      // Sign in Button
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      // not a member?
      const SizedBox(
        height: 25,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Not a Member?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register Now',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ];
  }
}
