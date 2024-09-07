// Usage example in a StatefulWidget
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trial6/auth_service.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firebase Auth Example')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                UserCredential? result = await _authService.signUp(
                  _emailController.text,
                  _passwordController.text,
                );
                if (result != null) {
                  print('Signed up: ${result.user?.email}');
                } else {
                  print('Sign-up failed');
                }
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                UserCredential? result = await _authService.signIn(
                  _emailController.text,
                  _passwordController.text,
                );
                if (result != null) {
                  print('Signed in: ${result.user?.email}');
                } else {
                  print('Sign-in failed');
                }
              },
              child: Text('Sign In'),
            ),

          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}


