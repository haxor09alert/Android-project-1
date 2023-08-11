import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  final _gap = const SizedBox(
    height: 8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const Text(
                      'Create An Account',
                      style: TextStyle(
                        fontFamily: 'Montserrat Bold',
                        fontSize: 18,
                      ),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name'),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Last Name'),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'E-mail'),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mobile Number'),
                    ),
                    _gap,
                   
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'age'),
                    ),
                  
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'address'),
                    ),
                     TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    ),
                    _gap,
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'confirm password'),
                    ),
                    _gap,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/LoginScreen');
                        },
                        child: const Text('Register'),
                      ),
                    ),
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
