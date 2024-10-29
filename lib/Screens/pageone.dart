import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final _prompt = TextEditingController();
  String results = "";

  // method to handle API + send request + get answer
  Future<void> WorkerAI(String prompt) async {
    setState(() {
      results = "Let met think ...";
    });

    //create instance:
    final model = GenerativeModel(
        model: 'gemini-pro', apiKey: "AIzaSyCtOK_yO9_LKjpuSjDXmL06dOjybWq5XgA");

    // Message we want to send
    final content = [Content.text(prompt)];
    // Receivng data
    final response = await model.generateContent(content);
    // apply answer to string
    setState(() {
      results = response.text.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromRGBO(100, 195, 191, 100),
        title: Text(
          "Ask AI",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Color.fromARGB(250, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Textfield for user to write his prompt
              TextField(
                controller: _prompt,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Color.fromARGB(255, 133, 133, 133)),
                  hintText: "Ask AI ...",
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 30),
              //OK Button
              TextButton(
                  onPressed: () {
                    WorkerAI(_prompt.text);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(100, 195, 191, 100),
                      foregroundColor: Color.fromARGB(250, 255, 255, 255),
                      padding: EdgeInsets.only(
                          left: 40, right: 40, bottom: 15, top: 15)),
                  child: Text("send")),
              SizedBox(height: 30),
              // Text to show data
              Text(results)
            ],
          ),
        ),
      ),
    );
  }
}
