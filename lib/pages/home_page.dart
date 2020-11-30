import 'package:awesome_app1/drawer.dart';
import 'package:awesome_app1/name_card_widget.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change My Name";

  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    // to initialize something before creating this widget
    super.initState();
  }

  @override
  void dispose() {
    // calls this method when this widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child:
                NameCardWidget(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          // setState needs to be called when
          setState(() {});
        },
        child: Icon(Icons.send),
        // mini: true
      ),
    );
  }
}
