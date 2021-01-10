import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
//import 'dart:convert';
import 'package:http/http.dart' as http;
import 'success.dart';



class Admin extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return AdminState();
  }
}

class AdminState extends State<Admin> {

  String _email;
  String _name;
 
  


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



   Widget _myListView(BuildContext context) {

      // backing data
      final europeanCountries = [];

      return ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(europeanCountries[index]),
          );
        },
      );

    }

  
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:AppBar(title: Text("Admin view")),
      body: Container(
        margin: EdgeInsets.all(24),
        child:Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _buildEmail(),
            // _buildPassword(),
            SizedBox(height: 100),
            // RaisedButton(
            //   child: Text(
            //     'Submit',
            //     style: TextStyle(
            //       color: Colors.blue, 
            //       fontSize: 16),),
            //  onPressed: () async {
            //     if (!_formKey.currentState.validate()) {
            //       //new add
            //       return null;
            //     }

            //     _formKey.currentState.save();  

            //     Map data = {
            //       "name":_name,
            //       "email":_email,
                  
                 
            //     };
                
            //     // print(_email);
            //     // print(_password);
            //     // print(data);
                
            //     var client = new http.Client(); 
            //     try { 
            //       final response = await client.post('http://192.168.254.107/mydocapp/public/api/auth/login',
            //       body: data);

            //       String error  = "invalid username and password";
            //       var responseDecode = json.decode(response.body);
            //       if (responseDecode['status']){
            //         print(responseDecode['data']);
            //         Navigator.push(
            //         context,
            //         MaterialPageRoute(
    	      //         builder: (context) => TodoList()),
            //          );
            //       }else{ // wala naka login
                    
            //         print(responseDecode['data']);
            //         return error;
                   
            //          }
            //            } 
            //     finally { 
            //       client.close(); 
            //     }

              // },
            // ),



            
          ],



        ),
      ),
    ),);

  }


}