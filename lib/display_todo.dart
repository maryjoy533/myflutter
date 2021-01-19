import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './model/record.dart';



class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'My todos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
      home: DisplayState(),
    );
  }
 
  
}



class DisplayState extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: FutureBuilder<Record>(
          future: getRecord(),
          builder: (context, snapshot){
            if (snapshot.hasData){
              return Text("desciption ${snapshot.data.desciption}");
            }
            if (snapshot.hasError){
              return Text(snapshot.error.toString());
            }
            return CircularProgressIndicator();
          },

        ),
            
        
        ),
      );
  }
  }
  
Future<Record>getRecord() async{
  final url = 'http://192.168.254.107/mydocapp/public/api/todos/' ;
  final response = await http.get(url);

  if(response.statusCode == 200){
    final jsonRecord = jsonDecode(response.body);
    return Record.responseJson(jsonRecord);
  }else{
    throw Exception();
  }
}

