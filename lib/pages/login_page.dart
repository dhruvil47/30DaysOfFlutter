import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "LoginPage",
          style: TextStyle(
              fontSize: 20,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
