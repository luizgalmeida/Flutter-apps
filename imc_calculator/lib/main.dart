import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: () {})
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.person_outline,
            size: 120.0,
            color: Colors.deepPurple,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Input your Weight - Kg",
                labelStyle: TextStyle(color: Colors.deepPurple)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Input your Height - CM",
                labelStyle: TextStyle(color: Colors.deepPurple)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
