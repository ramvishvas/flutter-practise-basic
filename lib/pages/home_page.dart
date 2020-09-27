import 'package:flutter/material.dart';

import '../widgets/name_card.dart';
import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Awesome App')),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: NameCard(),
          ),
        ),
      ),
      floatingActionButton: _MyFloatingActionButton(),
      drawer: MyDrawer(),
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
      child: Icon(Icons.send),
    );
  }
}