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
        body: Container(
          height: 500,
          color: Colors.cyan[400],
          child: Row( // Same can be done using the Column widget
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: max, // this depends on the parent
            children: [
              Container(
                // clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.red,
              ),
              Container(
                // clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.yellow,
              ),
              Container(
                // clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.green,
              ),
            ],
          ),
        ));
  }
}
