import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:100),
                child: Column(
                  children: [
                    Text('Welcome !', style: TextStyle(fontFamily: 'Poppins',fontSize:40,fontWeight: FontWeight.w800, color:Colors.white)),
                    Text("Let's get you started :)", style: TextStyle(fontFamily: 'Poppins',fontSize:15,fontWeight: FontWeight.w100, color:Colors.white)),
                    Container(
                      height:60,
                      width: double.infinity,
                      margin: EdgeInsets.only(top:80, left:40, right:40, bottom:90),
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:12),
                                child: Text('Login with Google', style: TextStyle(fontSize:16, color:Colors.white),),
                              ),
                              Image.asset("assets/images/googleicon.png", height:30, width:30 ),
                            ],
                          ),
                        ), onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffF85555),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ))
      );


  }
}
