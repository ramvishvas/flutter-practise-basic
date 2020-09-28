import 'package:flutter/material.dart';
import 'dart:convert';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_basic/pages/login_page.dart';
import 'package:flutter_basic/utils/constants.dart';

// import '../widgets/name_card.dart';
import '../widgets/my_drawer.dart';

class HomePageSB extends StatelessWidget {
  static const String routeName = '/homefb';

  Future fetDataFromApi() async {
    final url = 'https://jsonplaceholder.typicode.com/photos';
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    return data;
  }

  Stream<List<String>> getStream() {
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(500, (index) => "Item Number $index")]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome App'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Navigator.pop(context);

              Constants.prefs.setBool('loggedIn', true);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: StreamBuilder(
            stream: getStream(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(child: Text('Fetch Some Data'));

                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );

                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Center(child: Text('Fetch Data Error'));
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      var title = snapshot.data[index];

                      return Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.grey,
                          ),
                          title: Text(title),
                        ),
                      );
                    },
                  );

                default:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }
            },
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
