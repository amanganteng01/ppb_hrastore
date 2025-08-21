import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hrastore_rahman/screens/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _kuncifrom = GlobalKey<FormState>();

  bool _jikapasswordterlihat = false;

  Widget _gap() => const SizedBox(
        height: 16,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 8,
          child: Container(
            padding: const EdgeInsets.all(32.0),
            constraints: const BoxConstraints(
              maxWidth: 350,
            ),
            child: Form(
              key: _kuncifrom,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FlutterLogo(
                      size: 100,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Selamat datang di HRA Store',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Masukkan email disini!',
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email tidak boleh kosong';
                        }
                        const emailRegex =
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9,-]+\.[a-zA-Z]{2,}$';
                        final emailvalid = RegExp(emailRegex).hasMatch(value);
                        if (!emailvalid) {
                          return 'Format email tidak valid';
                        }
                        return null;
                      },
                    ),
                    _gap(),
                    TextFormField(
                      obscureText: !_jikapasswordterlihat,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Masukkan password disini!',
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _jikapasswordterlihat = !_jikapasswordterlihat;
                              });
                            },
                            icon: Icon(
                              _jikapasswordterlihat
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            )),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Isi passwordnya!';
                        }
                        if (value.length < 6) {
                          return 'Password harus lebih dari 6 huruf';
                        }
                        return null;
                      },
                    ),
                    _gap(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4))),
                          onPressed: () {
                            if (_kuncifrom.currentState?.validate() ?? false) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Masuk',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )),
                    )
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
