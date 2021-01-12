import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_app/main.dart';
import 'widget.dart';
import 'main.dart';


class Taskpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _TaskpageState();
  }
}


class _TaskpageState extends State<Taskpage> {
String title;

  @override
  Widget build(BuildContext context){
   return Scaffold(
     body: SafeArea(
       child: Container(
         child:Stack(
           children: [
             Column( 
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Padding(
                     padding: EdgeInsets.only(
                       top:24.0,
                       bottom: 6.0,

                     ),
                     child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image(
                            height: 30.0,
                            image:AssetImage(
                           'assets/images/icons8-back-arrow-24.png'

                         ),
                       ),
                     ),
                     Expanded(
                       child: TextField(
                         onSubmitted: (value){
                           print('my: $value');
                           title = value;
                         },
                         decoration: InputDecoration(
                           hintText: "enter a task title",
                           border: InputBorder.none,
                         ),
                         style: TextStyle(
                           fontSize:26.0,
                           fontWeight: FontWeight.bold,
                           color: Color(0xFF211551),
                         ),
                         

                       ),
                     ),

               ],

               ),
                   ),
                  

                 ),
                  Padding(
                    padding:EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: TextField(
                      onSubmitted: (des){
                           print(des);
                           },
                       decoration: InputDecoration(
                         hintText: "Enter description for this task",
                         border: InputBorder.none,
                         contentPadding: EdgeInsets.symmetric(horizontal: 24.0),
                       ),
                     ),
                  ),
                   TodoWidget(
                     text: "create first task",
                     isDone: false, // if false uncheked
                   ),
                   TodoWidget(
                     text: "create to do ",
                     isDone: true,
                   ),
                   TodoWidget(
                     isDone: false,
                   ), 
                   TodoWidget(
                     isDone: true,
                   ),
                   TodoWidget(
                     isDone: true,
                   ),
               ],
       ),
         Positioned(
                bottom: 24.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: () async{
                    Navigator.push(
                      context,MaterialPageRoute(
                        builder: (context) => MyApp()


                      ),
                      );

                          // Map data = {
                          //   'name':title,
                          //   'description':description


                          // };

                          //  var client = new http.Client(); 
                          //   try { 
                          //     final response = await client.post('http://192.168.254.107/mydocapp/public/api/products',
                          //     body: data);
                          //     if (response.statusCode == 200) {
                          //       print("sakto");
                          //       print(title);
                          //       print(response.body);
                          //       } else {
                          //       print("sayop");
                          //       throw Exception('Failed to load album');
                          //        }
                  
                          //               } 
                          //       finally { 
                          //     client.close(); 
                          //     }

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFFFE357),
                    ),
                    child: Image(
                      height: 50,
                      image:AssetImage(
                        'assets/images/remove.png'
                      ),
                    ),

                  ),
                ),
              ),
       
           ],
         )
       ),
     ),
   );
}
} 