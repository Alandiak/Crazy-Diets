import 'package:crazy_diets/global.dart';
import 'package:flutter/material.dart';

import 'package:crazy_diets/ui/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Login.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() {
      Global();
      return Text(
        'Crazy Diets',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Raleway', fontSize: 42.0, color: Colors.greenAccent, fontWeight: FontWeight.bold),
      );
    }

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              SizedBox(height: 50.0),
              GoogleSignInButton(
                onPressed: () =>
                // We replace the current page.
                // After navigating to the replacement, it's not possible
                // to go back to the previous screen:
                Navigator.of(context).pushReplacementNamed('/home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}