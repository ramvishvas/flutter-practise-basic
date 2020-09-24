import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Awesome App')),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
      floatingActionButton: _MyFloatingActionButton(),
      drawer: _MyDrawer(),
    );
  }
}

class _MyFloatingActionButton extends StatelessWidget {
  const _MyFloatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.edit),
    );
  }
}

class _MyDrawer extends StatelessWidget {
  const _MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Ramvishvas Kumar'),
            accountEmail: Text('ramvishvasg@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/60'),
            ),
          ),
          // DrawerHeader(
          //   child: Center(child: Text('Welcome')),
          //   decoration: BoxDecoration(color: Colors.purple),
          // ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ramvishvas Kumar'),
            subtitle: Text('Developer'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('ramvishvasg@gmail.com'),
            trailing: Icon(Icons.edit),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
