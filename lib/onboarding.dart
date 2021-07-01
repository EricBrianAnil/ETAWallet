import 'package:flutter/material.dart';
import 'package:eta_app/onboarding_content.dart';
import 'package:eta_app/sign_in.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: contents.length,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_,i){
                  return Padding(
                    padding: const EdgeInsets.only(top: 100, right:20, left:20),
                    child: Column(
                      children: [
                        Image.asset(contents[i].image,
                        height:550),
                      ],
                    ),
                  );
            }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length, (index) => dot(index, context),
              )
            ),
          ),
          Container(
            height:65,
            margin: EdgeInsets.only(top:50, left:40, right:40, bottom:90),
            width:double.infinity,
            child: FlatButton(
              child: Text("Continue", style: TextStyle(fontFamily: 'Poppins',fontSize:20,fontWeight: FontWeight.w200,color: const Color(0xff277E81),)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (_)=> Signin(),
                ),
                );
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            )
          )
        ],
      )
    );
  }
  Container dot(int index, BuildContext context){
    return Container(
      height:10,
      width:currentIndex == index ? 20:10,
      margin: EdgeInsets.only(right:5,bottom:5),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),color:Colors.white,
      ),
    );
  }
}
