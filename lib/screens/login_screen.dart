import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  final _gap = const SizedBox(
    height: 8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const Text(
                      'Login to your account',
                      style: TextStyle(
                        fontFamily: 'Montserrat Bold',
                        fontSize: 18,
                      ),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'username'),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'password'),
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget password?',
                            style: TextStyle(fontSize: 12),
                          )),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/DashboardScreen');
                        },
                        child: const Text('Login'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/RegisterScreen');
                        },
                        child: const Text(
                          'Do not have account? Sign up',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
