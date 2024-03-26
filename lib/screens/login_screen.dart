// This is the code for the login screen. It contains two text fields for the username and password, and a button to submit the form. The login method is called when the button is pressed, and it prints the username and password to the console.

import 'package:flutter/material.dart';
import 'package:activity_gen/api/db.dart';
import 'package:activity_gen/screens/signup_screen.dart';
import 'package:activity_gen/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final db = DB();
  final inputs = Map();

  void _login() async {
    String user_id = await db.authenticate(_usernameController.text, _passwordController.text);

    if (user_id != '') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    } else {
      print("something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                  }, 
                  child: const Text('No account? Sign up')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
