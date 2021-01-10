// import 'dart:io';

// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'dart:async';
import 'dart:convert';
//import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:myflutter_app/logres.dart';
import 'success.dart';


class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return LoginState();
  }
}

class LoginState extends State<Login> {

  String _email;
  String _password;
  


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    Widget _buildEmail() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty){
          return 'Email is Required';
        }

        if(!RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
        .hasMatch(value)){ 
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }



    Widget _buildPassword() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty){
          return 'Password is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }


    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:AppBar(title: Text("Login")),
      body: Container(
        
        margin: EdgeInsets.all(24),
        child:Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildEmail(),
            _buildPassword(),
            
            SizedBox(width:180,
                     height:85,),
            RaisedButton(
              color: Colors.blue[700],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue)),
                  
              child: Text(
                'Login',
              
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16),),
              onPressed: ()
               async {
                if (!_formKey.currentState.validate()) {
                  //new add
                  return;
                };
               
                

                _formKey.currentState.save();  

                Map data = {
                  "email":_email,
                  "password":_password, 
                 
                };
                
                // print(_email);
                // print(_password);
                // print(data);
                
                var client = new http.Client(); 
                try { 
                  final response = await client.post('http://192.168.254.107/mydocapp/public/api/auth/login',
                  body: data);

                  
                  var responseDecode = json.decode(response.body);
                  if (responseDecode['status']){
                    print(responseDecode['data']);
                    Navigator.push(
                    context,
                    MaterialPageRoute(
    	              builder: (context) => Body()),
                     );
                  }else{ // wala naka login
                    
                    print(responseDecode['data']);
                   
                   
                     }


                    
                    // set up the button
                  // Widget okButton = FlatButton(
                  // child: Text("OK"),
                  // onPressed: () { 
                  //    Navigator.push(context,
                  //    MaterialPageRoute(builder: (context)=>exit())
                      
                  //     );
                  //     },
                  // );

                  // Widget exit = FlatButton(
                  // child: Text("exit"),
                  // onPressed: null;

                  // // set up the AlertDialog
                  // AlertDialog alert = AlertDialog(
                  // title: Text("Opsss"),
                  // content: Text("Invalid usename or password"),
                  // actions: [
                  // okButton,
                  // exit
                  // ],
                  // );

                  // // show the dialog
                  // showDialog(
                  //     context: context,
                  //   builder: (BuildContext context) {
                  //    return alert;
                  //    },
                  //   );
                    
                  // }
                  // if (response.statusCode == 200) {
                      
                  //   // If the server did return a 200 OK response,
                  //   // then parse the JSON.
                  //   print(response.body);
                    
                  //   print(data);
                   
                  // } else {
                  //   // If the server did not return a 200 OK response,
                  //   // then throw an exception.
                  //   throw Exception('Failed to load album');
                 
                  
                } 
                finally { 
                  client.close(); 
                }

              },
            ),



            
          ],



        ),
      ),
    ),);

  }


}