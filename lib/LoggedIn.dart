import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loggedin extends StatelessWidget {
  const Loggedin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Great! A little more info and \nwe should be good to go.', textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Poppins',fontSize:80,fontWeight: FontWeight.w800, color:Colors.green,)),
          ],
        )
      ),


    );
  }
}


