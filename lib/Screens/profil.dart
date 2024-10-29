import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final User = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Container(
          
            child: Container(
              
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(100, 195, 191, 100),
                   borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20.0),
                    right: Radius.circular(20.0),
                  ),
                  ),
                  child: Center(
                    child: Column(
                       children: [
                        SizedBox(height: 100,),
                        CircleAvatar(
                          radius: 30,
                          
                          child: Icon(CupertinoIcons.person),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                         Text(
                        User.email!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                       ],
                    ),
                  ),
                ),
                Container(
                  
                  child: Column(
                    
                    children: [
                      SizedBox(height: 50,),
                      Text("First Name"),
                      SizedBox(
                      height: 20,
                    ),
                      Container(
                        height: 1,
                        margin: EdgeInsets.all(10),
                        width:double.infinity, color: Colors.black,
                        ),
                        SizedBox(
                      height: 20,
                    ),
                        Text("last Name"),
                        SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height:20,
                    ),
                    Text("email"),
                    Container(
                      height: 1,
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Phone Number"),
                    Container(
                      height: 1,
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                height: 50,
                width: 200, // Largeur souhaitée du bouton
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Rayon souhaité
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Assurez-vous que les deux rayons sont égaux
                    
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  color: Color.fromRGBO(100, 195, 191, 1.0),
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
      
            ],
            ),
            )
        ),
      ),
    );
  }
}