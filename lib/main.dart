import 'package:flutter/material.dart';

void main() {
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
        title: Text('Awesome App'),
      ),
      body: Center(
        child: Container(
          color: Colors.teal,
          height: 100,
          width: 100,
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
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
