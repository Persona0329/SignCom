// lib/login_form.dart

import 'package:flutter/material.dart';
import 'home.dart';
import 'register_form.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Customize the app bar design with dark violet background
        backgroundColor: Color.fromRGBO(26, 26, 26, 1),
        centerTitle: true,
        title: const Text(
          'SignCom',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), // Adjust text color
        ),
      ),
      body: Container(
        color: Color.fromRGBO(21, 20, 21, 1), // Set background color for the login form to gray
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your logo goes here
            Image(
              image: AssetImage('assets/logo2.png'), // Replace with the path to your logo image
              width: 100.0, // Set width as needed
              height: 100.0, // Set height as needed
            ),
            const SizedBox(height: 16.0), // Add   some space

            // Username TextField
            TextField(
              style: TextStyle(color: Colors.white), // Adjust text color
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white), // Adjust label color
                hintStyle: TextStyle(color: Colors.white70), // Adjust hint color
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Set border radius
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Set border radius
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16.0), // Add some space

            // Email TextField
            TextField(
              style: TextStyle(color: Colors.white), // Adjust text color
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white), // Adjust label color
                hintStyle: TextStyle(color: Colors.white70), // Adjust hint color
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Set border radius
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Set border radius
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0), // Add some space

            // Password TextField with Show Password button
            TextField(
              style: const TextStyle(color: Colors.white), // Adjust text color
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.white), // Adjust label color
                hintStyle: const TextStyle(color: Colors.white70), // Adjust hint color
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Set border radius
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Set border radius
                  borderSide: BorderSide(color: Colors.white),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.white, // Adjust icon color
                  ),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
              ),
              obscureText: !_showPassword,
            ),
            const SizedBox(height: 16.0), // Add some space

            // Your login button goes here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    // Handle login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 255, 163, 1),
                    onPrimary: Colors.black
                  ),
                  child: const Text('Login'),
                ),

                // Go to Register Form button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the RegisterForm when the button is clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterForm()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 255, 163, 1),
                    onPrimary: Colors.black
                  ),
                  child: const Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
