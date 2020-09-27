import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var url = 'https://jsonplaceholder.typicode.com/photos';

  var data;

  void fetDataFromApi() async {
    var response = await http.get(url);
    data = jsonDecode(response.body);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    fetDataFromApi();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: data != null
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                var photo = data[index];

                return Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.grey,
                      backgroundImage:
                          CachedNetworkImageProvider(photo["thumbnailUrl"]),
                    ),
                    title: Text(photo["title"]),
                    subtitle: Text(photo["url"]),
                  ),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
