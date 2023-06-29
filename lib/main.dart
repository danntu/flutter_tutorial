import 'package:flutter/material.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter tutorial"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: RichText(
          text: const TextSpan(
              style: TextStyle(
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontFamily: "Notable"),
              children: <TextSpan>[
                TextSpan(text: "Hello, "),
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "Brave New "),
                    TextSpan(
                      text: "World",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(text: "!"),
              ]),
        ),

        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: const Text("Add")),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [],
        // ),
      ),
    );
  }
}
