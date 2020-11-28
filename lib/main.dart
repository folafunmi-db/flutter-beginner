import 'package:flutter/material.dart';

void main() {
  // Anytime a change is made inside runApp
  // you need to hot restart to see changes
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            // color: Colors.red,
            // clipBehavior: Clip.antiAlias,
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [Colors.pink, Colors.purple]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ]
                // shape: BoxShape.circle,
                ),
            child: Text(
              "I am a Box",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
