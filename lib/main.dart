import 'package:flutter/material.dart';

void main() {
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
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Awesome App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    //"assets/1.jpeg",
                    "assets/2.webp",
                    //width: 100,
                    //height: 100,
                    //fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter some text",
                            labelText: "name")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            //DrawerHeader(
            //  child: Text("Menu"),
            //  decoration: BoxDecoration(color: Colors.yellow),
            //),
            UserAccountsDrawerHeader(
              accountName: Text('aaa'),
              accountEmail: Text('a@a.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1561948955-570b270e7c36?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=859&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('abc'),
              subtitle: Text('123'),
              trailing: Icon(Icons.edit),
              //onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('def'),
              subtitle: Text('456'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
