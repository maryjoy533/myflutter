import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Display extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return DisplayState();
  }
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class DisplayState extends State<Display> {
  String desc;
  List data;



  Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull("http://192.168.254.107/mydocapp/public/api/todos/"),
      headers: {
        "Accept": "application/json"
      }
    );
     this.setState(() {
      data = json.decode(response.body);
    });

    print(data[1]["desc"]);
    
    return "Success!";
  }
  @override
  void initState(){
    this.getData();
  }

 @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Listviews"), backgroundColor: Colors.blue),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child: new Text(data[index]["desc"]),
          );
        },
      ),
    );
  }
}
 