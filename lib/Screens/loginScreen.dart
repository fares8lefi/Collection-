import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class lodginScreen extends StatefulWidget {
  const lodginScreen({super.key});

  @override
  State<lodginScreen> createState() => _lodginScreenState();
}

class _lodginScreenState extends State<lodginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
  await FirebaseAuth.instance.signInWithEmailAndPassword
  (email: _emailController.text.trim(), password: _passwordController.text.trim());
  }
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/black.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                "Welcome !",
                style: TextStyle(
                    color: Color.fromRGBO(100, 195, 191, 100),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/log.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 10, horizontal: 20),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "email",
                    fillColor: Color.fromRGBO(100, 195, 191, 100),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Colors
                            .orange, // Changement de la couleur de la bordure en orange
                        width:
                            5.0, // Changement de l'épaisseur de la bordure si nécessaire
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 10, horizontal: 20),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "password",
                    fillColor: Color.fromRGBO(100, 195, 191, 100),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      borderSide: BorderSide(
                        color: Colors
                            .orange, // Changement de la couleur de la bordure en orange
                        width:
                            5.0, // Changement de l'épaisseur de la bordure si nécessaire
                      ),
                    ),
                  ),
                ),
              ),
              //bottton log in
              GestureDetector(
                onTap: signIn,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber,
                  ),
                  
                 child:  const Center(child: Text("Sign in", style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                 ),
                 ),
                 ),
                  ),
              ),
              
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 2,
                    width: 120,
                    color: Colors.cyan,
                  ),
                  const Text("or sign in with google"),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 2,
                    width: 135,
                    color: Colors.cyan,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
