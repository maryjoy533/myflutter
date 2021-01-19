import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'display_todo.dart';



class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return TodoState();
  }
}

class TodoState extends State<Todo> {
  String _desc;
 



final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildTask() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter task'),
      maxLength: 10,
      onSaved: (String value) {
        _desc = value;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:AppBar(title: Text("Patient Todos")),
      body: Container(
        margin: EdgeInsets.all(24),
        child:Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildTask(),

            SizedBox(width:180,
                     height:85,),

            RaisedButton(
              color: Colors.blue[700],
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue)),

              child: Text(
                'Todo Task',
              
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16),
                  
                  ),
              onPressed: () async {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Display())
                );
               
               if (!_formKey.currentState.validate()) {
                  return;
                }


                _formKey.currentState.save();  

                Map data = {
                  "desciption":_desc, 
                };
                

                var client = new http.Client(); 
                try { 
                  final response = await client.post('http://192.168.254.107/mydocapp/public/api/todos/create_todo',
                  body: data);
                  if (response.statusCode == 200) {
                    print("sulod");
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

          
            
          ],

          



        ),
      ),
    ),);

  }


}