import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {  

  String title;
  String description;
  TaskCardWidget({this.title, this.description});

 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:EdgeInsets.symmetric(
        vertical:32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(
        bottom:20.0
      ),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text (
            title ?? 
        "(Unnamed Task)",
        style:TextStyle(
          color: Colors.black,
          fontSize:22.0,
          fontWeight: FontWeight.bold,
        ),

        ),
        Padding(
          padding:EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            description ?? 
            "(No description added)",
            style: TextStyle(
              fontSize:13.0,
              height: 1.5,
              color: Color(0xFF868290),
            ),
          ),
        ),
        ],
      ),
    );
      
  }
}

class TodoWidget extends StatelessWidget {
  
  final String text;
  final bool isDone;
  TodoWidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical:8.0,
        ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height:20.0,
            margin: EdgeInsets.only(
              right: 16.0
            ),
            decoration: BoxDecoration(
              color: isDone ? Colors.blue: Colors.transparent, // if isDone == true colored; else tranparent color
              borderRadius: BorderRadius.circular(6.0),
               border: isDone ? null : Border.all(
               color: Color(0xFFBDBDBD),
               width: 1.5,
            ),
      ),
           
           
            child:Image(
              image: AssetImage(
                'assets/images/icons8-check-mark-48.png'
              ),
            ),  
          ),
          
          Text(
            //if text is null show unnamed task
            text ?? "(Unnamed task)",
             style: TextStyle(
               color: isDone ? Color(0xFF2111551) : Color(0xFF8682290),
               fontSize:16.0,
               fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
            
          ),
            ),
         
        ],
      ),
    );
  }

}