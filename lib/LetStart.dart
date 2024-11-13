import 'package:firstproject/Gym.dart';
import 'package:firstproject/main.dart';
import 'package:firstproject/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main(){
  runApp(MaterialApp(
    home: LetStart(),
  ));
}

class LetStart extends StatefulWidget {
  const LetStart({super.key});

  @override
  State<LetStart> createState() => _LetStartState();
}

class _LetStartState extends State<LetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: 5000,
            decoration: const BoxDecoration(
                gradient: LinearGradient( begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                  colors: [
                    Colors.deepPurple,
                    Colors.indigoAccent,
                    Colors.purple
                  ],)
            ),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Center(
                  child:   Image.asset('images/fitness-gym_5545211.png',
                    width: 500,
                    height: 300,),
                ),

                SizedBox(
                  height: 5,
                ),
                Center(
                  child:  Text("Let's Start",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 50) ,
                  ),
                ),

                // SizedBox(height: 3,),
                // Center(
                //   child: Text("Your Habits",
                //     style: TextStyle(
                //         fontSize: 50,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white),
                //   ),
                // ),
                SizedBox(height: 10,),
                Center(child:  Padding(padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child:  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    style: TextStyle(color: Colors.white,
                        fontSize: 15,fontWeight: FontWeight.bold),
                  ),)

                ),
                SizedBox(height: 20,),
                Center(
                  child:SizedBox(
                    height: 60 , width: 140,
                    child:  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>Gym()));
                      },
                      child:   Text('Start Now',
                        style: TextStyle(fontWeight: FontWeight.bold ,
                            fontSize: 15,
                            color: Colors.purpleAccent),

                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.purpleAccent,
                        elevation: 10,

                      ),
                    ) ,
                  ),

                )
              ],
            ),
          ),



    );
  }
}
