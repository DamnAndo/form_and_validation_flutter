import 'package:flutter/material.dart';
import 'package:flutter_app_form_validation/src/screens/login_screen.dart';

class App extends StatelessWidget {

  Widget build(context){
    return MaterialApp(
      title: "This is App Form Validation",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}