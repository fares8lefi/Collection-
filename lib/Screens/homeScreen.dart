import 'package:appai/Screens/pageone.dart';
import 'package:appai/Screens/profil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final User = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromRGBO(100, 195, 191, 100),
        child: Container(
          height: 60,
          child: Row(
          
            children: [
               SizedBox(width: 5,), 
              CircleAvatar(
                radius: 20,
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                        
                }, icon: Icon(CupertinoIcons.person),),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                User.email!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 170,
              ),
              Icon(
                Icons.settings,
                color: Colors.white, // Couleur bleue
              ),
            ],
          ),
        ),
      ),
      body: Center(
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
          SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(100, 195, 191, 100),
            ),
            child: const Center(
              child: Text(
                "Visit Brands",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(100, 195, 191, 100),
            ),
            child: const Center(
              child: Text(
                "Cheak Product",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(100, 195, 191, 100),
            ),
            child: const Center(
              child: Text(
                "Add Product",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Row(
            children: [
              SizedBox(
                width: 325,
              ),
              CircleAvatar(
                radius: 32,
                child: CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PageOne()));
                      },
                      icon: Icon(CupertinoIcons.mail),
                    )),
              )
            ],
          )
        ],
      )),
    );
  }
}
