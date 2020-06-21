import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int numberofsquares=760;
  static List<int> snakePosition=[45,65,85,105,125];
  static var randomNumber=Random();
  int food=randomNumber.nextInt(700);
  
  void generateNewFood(){
    food=randomNumber.nextInt(700);
  }
  @override
  Widget build(BuildContext context) {
    return Column
    (
      children:<Widget>[
       Expanded(
                child: GestureDetector
         (
           child: Container
           (
             child: GridView.builder
             (
               physics: NeverScrollableScrollPhysics(),
               itemCount: numberofsquares,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
               (
                 crossAxisCount: 20,
                 ),
                itemBuilder:(BuildContext context,int index){
                  if(snakePosition.contains(index)){
                  return Container
                  (
                    padding: EdgeInsets.all(2),
                    child: ClipRRect 
                    (
                      borderRadius: BorderRadius.circular(5),
                      child:Container
                      ( 
                        color: Colors.white,
                      )
                    ),
                  );
                  }
                  if(index==food){
                   return Container
                  (
                    padding: EdgeInsets.all(2),
                    child: ClipRRect 
                    (
                      borderRadius: BorderRadius.circular(5),
                      child:Container
                      ( 
                        color: Colors.blue,
                      )
                    ),
                  ); 
                  }
                  else
                  {
                    return Container
                  (
                    padding: EdgeInsets.all(2),
                    child: ClipRRect 
                    (
                      borderRadius: BorderRadius.circular(5),
                      child:Container
                      ( 
                        color: Colors.grey[900],
                      )
                    ),
                  );

                  }
                }
                ),
           ),
         ),
       ),
       Padding
       (
         padding: EdgeInsets.only(bottom: 10,left: 20,right: 20),
         child: Row
         (mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
           children: <Widget>[
             Text("Start Game.",style: TextStyle 
             (
               color: Colors.green,
               fontWeight: FontWeight.bold,
               fontSize: 20,
               ),
               ),
             Text("@Developed By Shuvam-Koirala.",style: TextStyle
              (
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                ),
                ),
           ],
         ),
         )
      ]
      ); 
      
  }
}