import 'package:flutter/material.dart';
import 'package:rastreo/widgets/HomePage.dart';
import 'package:rastreo/widgets/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        routes: {'/': (context) => Login(), '/home': (context) => HomePage()});
  }
}
