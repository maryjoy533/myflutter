
import 'dart:async';
import 'dart:convert';


import 'package:http/http.dart' as http;



Future<List> getData() async{

    String myUrl = "http://192.168.254.107/mydocapp/public/api/todos/";
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }