import 'package:flutter/material.dart';
import 'package:restofatlem_14624/welcome.dart';
import 'package:restofatlem_14624/login.dart';
import 'package:restofatlem_14624/dashboard.dart';
import 'package:restofatlem_14624/update_user.dart';
import 'package:restofatlem_14624/payment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => Login(),
        '/dashboard': (context) => Dashboard(),
        '/update-user': (context) => UpdateUser(),
        '/payment': (context) => Payment(),
      },
    );
  }
}
