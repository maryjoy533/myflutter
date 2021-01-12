import 'package:flutter/material.dart';
import 'success.dart';
import 'todo.dart';
                                                                                                  
class Afterlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       
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
                MaterialPageRoute(builder:(context)=>Body())
                );
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('Doctors', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
       SizedBox(
        height:16,
       ),
        
      
        SizedBox(
          width:180,
          height:85,
          child: RaisedButton(
          padding:EdgeInsets.symmetric(vertical:8, horizontal:30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>Todo())
              );
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('To do', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
        SizedBox(
        height:16,),
      ],//children
     )),//column, center
      

    );//scaffold
  }
}
