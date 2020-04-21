import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
        backgroundColor: Colors.red,
      ),
      body: Column(


        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Text("Blue"),
          ),
          Container(
            color: Colors.amber,
            child: Text("Blue"),
          ),
          Center(
            child: Container(
              color: Colors.greenAccent,
              child: Text("Blue"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: null,
        backgroundColor: Colors.red,
      ),
    );
  }
}
