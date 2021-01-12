
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'afterlogin.dart';




class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return LoginState();
  }
}

class LoginState extends State<Login> {

  String _email;
  String _password;

  FToast fToast;

  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
}


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
    	              builder: (context) => Afterlogin()),
                     );
                  }else{ // wala naka
                  Fluttertoast.showToast(
                    msg: "Invalid Username or password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
    );
                    
                    
                    print(responseDecode['data']);
                   
                   
                     }


                 
                  
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


