import 'package:flutter/material.dart';
import 'widget.dart';
import 'taskpage.dart';

class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return TodoState();
  }
}


class TodoState extends State<Todo> {

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          width:double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal:24.0,
            
          ),
          color:Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom:12.0

                    ),
                    child: Image(
                    height: 90,            
                    image: AssetImage(
                        'assets/images/health.png'

                    ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                        title: "get started",
                        description: "drink a full glass of water"
                        ), 
                        TaskCardWidget(
                          title: "What to eat? ",
                        description: "fruits and vegetable"
                        ), 
                         TaskCardWidget(
                           title: "Don't do?",
                           description: "Do not spend to much time on social media"
                         ), 
                          TaskCardWidget(
                            title: "make habbit",
                            description: "Meditate"
                          ), 
                           TaskCardWidget(
                             title: "Appreciate",
                            description: "Appreciate Nature, people and little things"
                           ), 
                           TaskCardWidget(
                             title: "Be Happy",
                             description: "Have a happy life"
                           ),
                           TaskCardWidget(
                             title: "Sleep Early",
                             description: "Sleep 8 Hours"
                           ),

                      ],
                    ),
                  ),

                  



                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,MaterialPageRoute(
                        builder: (context) => Taskpage()


                      ),
                      );

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image(
                      height: 50,
                      image:AssetImage(
                        'assets/images/add.png'
                      ),
                    ),

                  ),
                ),
              ),
            ],
          ),
          

        ),

        ),
    );
  }
}