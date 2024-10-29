import 'package:appai/Screens/auth.dart';
import 'package:appai/Screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  void OpenSignUpScreen() {
    Navigator.of(context).pushReplacementNamed('SignUpScreen');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
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
            const Text("Find the things that you love !"),
            const SizedBox(
              height: 10,
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
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: OpenSignUpScreen,
              child: Container(
                height: 50,
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(100, 195, 191, 1),
                ),
                child: Center(
                  child: Text(
                    "Sing Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Auth()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white, // Changement de la couleur du fond en blanc
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Color.fromRGBO(100, 195, 191, 1),
                        width:
                            2, // Changement de la couleur de la bordure en orange
                      ),
                    ),
                  ),
                ),
                child: const Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
