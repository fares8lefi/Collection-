import 'dart:async';



import 'package:appai/Screens/auth.dart';
import 'package:appai/Screens/firstScreen.dart';
import 'package:appai/Screens/homeScreen.dart';
import 'package:appai/Screens/loginScreen.dart';
import 'package:appai/Screens/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       home: firstScreen(),
      routes: {
        'Auth': (context) => const Auth(),
        'homeScreen': (context) => const homeScreen(),
        'SignUpScreen': (context) => const sinupScreen(),
        'loginScreen': (context) => const lodginScreen(),
      },
    );
  }
}
