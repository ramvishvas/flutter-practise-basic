import 'package:flutter/material.dart';

class NameCard extends StatefulWidget {
  const NameCard({
    Key key,
  }) : super(key: key);

  @override
  __MyCardState createState() => __MyCardState();
}

class __MyCardState extends State<NameCard> {
  var myText = 'User';

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            'coder.jpg',
            // height: 100,
            // width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hello ' + myText,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              myText = _controller.text;
              setState(() {});
            },
            child: Icon(Icons.send),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
