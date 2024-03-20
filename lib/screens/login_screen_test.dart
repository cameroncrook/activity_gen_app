import 'package:flutter/material.dart';
import 'package:activity_gen/api/db.dart';

class LoginTest extends StatefulWidget {
  const LoginTest({super.key});

  @override
  State<LoginTest> createState() => _LoginTestState();
}

class _LoginTestState extends State<LoginTest> {
  String userId = "";
  final DB db = DB();

  void authenticateUser() async {
    String username = "bigdaddy501";
    String password = "hashedPassword";

    String id = await db.authenticate(username, password);
    setState(() {
      userId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          userId.isNotEmpty ? Text('User ID: $userId') : SizedBox.shrink(),
          ElevatedButton(
              onPressed: () {
                authenticateUser(); // Initiate authentication
              },
              child: Text('Login'),
            ),
        ],
      ),
    );
  }
}