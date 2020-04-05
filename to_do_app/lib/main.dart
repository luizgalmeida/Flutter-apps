import 'package:flutter/material.dart';

void main() {
  runApp(new TaskList());
}

class TaskList extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new ListScreen()
    );
  }
}

class ListScreen extends StatelessWidget{

  Widget getItem(){
    return new Row( children: <Widget>[
                IconButton(
                  icon: new Icon(Icons.check_box, color: Colors.green),
                  iconSize: 42.0,
                  onPressed: () {},
                ),
                new Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Wash my ass very well!"),
                    Text("24-03-2020")
                  ],
                )
              ],
            );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return new Scaffold(
        
        appBar: new AppBar(
          title: new Text("Task List (:")
        ),

        body: Column( children: <Widget>[
            Expanded(child:
              ListView(children: <Widget>[
                getItem()
                ],)  
            ,)
        ],
      )

      );
    
  }
}
