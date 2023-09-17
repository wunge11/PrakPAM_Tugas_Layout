import 'package:flutter/material.dart';
import 'package:prakmobile_tugas_layout/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      themeAnimationCurve: Curves.bounceIn,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.lock_person_rounded),
          title: Text('Halaman Login'),
        ),
        body: LoginPage(),
      ),
    );
  }
}