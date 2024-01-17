// lib/main.dart
import 'package:flutter/material.dart';
import 'login_form.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignCom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginForm(), 
    );
  }
}
