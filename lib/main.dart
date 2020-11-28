import 'package:flutter/material.dart';

void main() {
  // Anytime a change is made inside runApp
  // you need to hot restart to see changes
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
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
        body: Container(
          child: Text('Hello World'),
        ));
  }
}
