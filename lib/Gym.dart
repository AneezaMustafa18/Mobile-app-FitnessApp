import 'package:firstproject/main.dart';
import 'package:firstproject/yoga.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main (){
  runApp(const MaterialApp(
    home: Gym(),
  ));
}

class Gym extends StatefulWidget {
  const Gym({super.key});

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.purpleAccent,),

          activeIcon: Icon(Icons.home,color: Colors.purple,),

          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.feedback, color: Colors.purpleAccent,),

          label: 'Feedback',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,color: Colors.purpleAccent,),

          label: 'Setting',

        ),
      ],),
      body: SafeArea(
          child: Padding(padding: EdgeInsets.all(10.0),
          child:  SingleChildScrollView(
          child: Column(
            children: [
                  Padding(padding: EdgeInsets.all(4)),
                Text('Activities',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30
                  ),
                ),

                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('MON',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('TUE', style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('WED' ,style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('THURS', style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('FRI', style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('SAT', style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text('SUN', style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                     InkWell(
                      hoverColor: Colors.transparent,
                      onTap: (){
                       Get.to(yoga());
                      },
                    child: Card(
                      elevation: 5,
                      color: Colors.black,
                       shadowColor: Colors.purpleAccent,
                      margin: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('images/yoga_2647492.png',),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Yoga",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),


                  SizedBox(
                    height: 10,
                  ),

                   InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){

                    },
                    child: Card(
                      elevation: 5,
                      color: Colors.black,
                      shadowColor: Colors.purpleAccent,
                      margin: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('images/boat_2647494.png',),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Boat",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: (){

                },
                child: Card(
                  elevation: 5,
                  color: Colors.black,
                  shadowColor: Colors.purpleAccent,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('images/exercise_15622302.png',),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Excercises",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                hoverColor: Colors.transparent,
                onTap: (){
                },
                child: Card(
                  elevation: 5,
                  color: Colors.black,
                  shadowColor: Colors.purpleAccent,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('images/leg_2647621.png',),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Leg",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

                ],
              ),
      ),

      ),
      ),



    );
  }
}












