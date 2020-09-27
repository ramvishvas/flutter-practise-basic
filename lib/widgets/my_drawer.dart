import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
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
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('ramvishvasg@gmail.com'),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
