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
            child: Card(
                child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/coding.jpg',
                  // width: 100,
                  // height: 100,
                  // fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(myText,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: "Enter some Text",
                        labelText: 'Name',
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            )),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Folafunmi"),
              accountEmail: Text("folafunmimustapha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"),
              ),
              decoration: BoxDecoration(color: Colors.purple[300]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
              subtitle: Text('Folafunmi'),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Role'),
              subtitle: Text('Developer'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
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
