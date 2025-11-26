import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _email = '';
  String _password = '';

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body:  Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                key: Key('emailField'),
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),

              SizedBox(height: 16),
              
              TextField(
                key: Key('passwordField'),
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                    setState(() {
                      if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(_emailController.text) ) {
                    _email ='Email is not valid';
                    }
                    else {
                      _email ='Email is valid';
                    }
                    if (_passwordController.text.isEmpty || _passwordController.text.length < 8) {
                      _password ='Password is not valid';
                    }
                    else {
                      _password = 'Password is valid';
                    }
                    });
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16),
              Text('Email: $_email'),
              SizedBox(height: 16),
              Text('Password: $_password'),
            ],
          ),
        ),
      ),
      
    );
  }
}