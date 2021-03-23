import 'package:flutter/material.dart';

void main() {
  runApp(Method46App());
}

class Method46App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Image.asset(
          'images/logo.png',
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
