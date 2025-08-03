import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Intern Portal", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              TextField(decoration: InputDecoration(labelText: 'Email')),
              TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () => Navigator.pushReplacementNamed(context, '/dashboard'),
              ),
              TextButton(
                child: Text("Don't have an account? Sign up"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
