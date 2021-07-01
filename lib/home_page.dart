import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:eta_app/google_sign_in.dart';
import 'package:eta_app/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eta_app/LoggedIn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
      }
        else if (snapshot.hasData){
          return Loggedin();
        }
        else if (snapshot.hasError){
          return Center(child:Text('Something Went Wrong :/'));
        }
        else {
        return Signin();
      }
      },
    ),
  );
}

    
    