import 'package:flutter/material.dart';
import 'package:myflutter_app/login.dart';
import 'package:myflutter_app/patientregistration.dart';

                                                                                                  
class Logres extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("welcome"),
      ),//appbar
     body: Center(
      child:Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width:180,
          height:85,
          child: RaisedButton(
          padding:EdgeInsets.symmetric(vertical:8, horizontal:30),
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=>Login())
                );
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('Login', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
       SizedBox(
        height:8,
       ),
        
      
        SizedBox(
          width:180,
          height:85,
          child: RaisedButton(
          padding:EdgeInsets.symmetric(vertical:8, horizontal:30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>PatientRegistration())
              );
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('Register', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
        SizedBox(
        height:8,
       ),
        
     
      ],//children
     )),//column, center
      

    );//scaffold
  }
}