

import 'package:appai/Screens/homeScreen.dart';
import 'package:appai/Screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const homeScreen(); 
            } else  {
            return const lodginScreen(); 
          } 
        },
      ),

    );
  }
}
