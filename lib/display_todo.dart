import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import './model/record.dart';

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My todos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DisplayState(),
    );
  }
}

class DisplayState extends StatelessWidget {
  List data;

  Future<List> getData() async {
    final response = await http.get("http://192.168.254.107/mydocapp/public/api/todos/");
    return json.decode(response.body);
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Listviews Products"),
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            child: new Card(
              child: new ListTile( 
                trailing: Icon(Icons.delete),    
                title: new Text(
                  list[i]['desciption'].toString(),
                  style: TextStyle(fontSize: 25.0, color: Colors.orangeAccent),
                  
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}