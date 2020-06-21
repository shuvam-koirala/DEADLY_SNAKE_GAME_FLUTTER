import 'package:flutter/material.dart';
import 'gamepage.dart';
void main(){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (debugShowCheckedModeBanner: false,
      home: Scaffold
      (
        appBar: AppBar
        ( 
          backgroundColor: Colors.green,
          elevation: 20,
          title: Text("Deadly Snake"),
          centerTitle: true,
          leading: Icon(Icons.gamepad),
        ),
        backgroundColor: Colors.black,
        body: SafeArea
        (
          child:GamePage(),
        ),
      ),
    );
  }
}