import 'package:flutter/material.dart';
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
                };
                

                var client = new http.Client(); 
                try { 
                  final response = await client.post('http://192.168.254.107/mydocapp/public/api/auth/register',
                  body: data);
                  if (response.statusCode == 200) {
                    print("sakto");
                    print(data);
                    print(response.body);
                  } else {
                    print("sayop");
                    throw Exception('Failed to load album');
                  }
                  
                } 
                finally { 
                  client.close(); 
                }

              },
            ),
            SizedBox(width:180,
                     height:5),
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
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Login()));

              },)

          
            
          ],

          



        ),
      ),
    ),);

  }


}