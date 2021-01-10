import 'package:flutter/material.dart';
// import 'dart:async';
//import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myflutter_app/login.dart';


class PatientRegistration extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return PatientRegistrationState();
  }
}

class PatientRegistrationState extends State<PatientRegistration> {
  String _name;
  String _email;
  String _password;
  // String _phoneNumber;
  // String _address;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty){
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }



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

  //   Widget _buildPhoneNumber() {
  //   return TextFormField(
  //     decoration: InputDecoration(labelText: 'Phone Number'),
  //     keyboardType: TextInputType.phone,
  //     validator: (String value) {
  //       if (value.isEmpty){
  //         return 'Phone NUmber is Required';
  //       }
  //       return null;
  //     },
  //     onSaved: (String value) {
  //       _phoneNumber = value;
  //     },
  //   );
  // }

  //   Widget _buildAddress() {
  //   return TextFormField(
  //     decoration: InputDecoration(labelText: 'Address'),
  //     keyboardType: TextInputType.streetAddress,
  //     validator: (String value) {
  //       if (value.isEmpty){
  //         return 'Address is Required';
  //       }
  //       return null;
  //     },
  //     onSaved: (String value) {
  //       _address = value;
  //     },
  //   );
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:AppBar(title: Text("Patient Registration")),
      body: Container(
        margin: EdgeInsets.all(24),
        child:Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildName(),
            _buildEmail(),
            _buildPassword(),
            // _buildPhoneNumber(),
            // _buildAddress(),
            SizedBox(width:180,
                     height:85,),
            RaisedButton(
              color: Colors.blue[700],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue)),

              child: Text(
                'Register',
              
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16),),
              onPressed: () async {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Login())
                );
                if (!_formKey.currentState.validate()) {
                  return;
                }

                _formKey.currentState.save();  

                Map data = {
                  "name":_name, 
                  "email":_email,
                  "password":_password, 
                  // "phone":_phoneNumber, 
                  // "address":_address
                };
                

                var client = new http.Client(); 
                try { 
                  final response = await client.post('http://192.168.254.107/mydocapp/public/api/auth/register',
                  body: data);
                  if (response.statusCode == 200) {
                    print("sakto");
                    print(data);
                      
                    // If the server did return a 200 OK response,
                    // then parse the JSON.
                    print(response.body);
                  } else {
                    // If the server did not return a 200 OK response,
                    // then throw an exception.
                    print("sayop");
                    throw Exception('Failed to load album');
                    
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