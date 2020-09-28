import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/home_body.dart';

// import '../widgets/name_card.dart';
import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome App'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          // child: SingleChildScrollView(
          //   child: NameCard(),
          // ),

          child: HomeBody(),
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
