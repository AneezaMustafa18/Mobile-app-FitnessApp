import 'package:firstproject/Gym.dart';
import 'package:firstproject/LetStart.dart';
import 'package:firstproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(login());
}
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child: Column(

          children: [
            Image.asset('images/treadmill_8965813.png', width: 350,),
            SizedBox(height: 5,),
            SizedBox(
              height: 40,
              child: Text('Join Our Fitness Academy!',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.purple,fontSize: 30,fontStyle: FontStyle.normal  )
                ,),
            ),
            SizedBox(height: 10,),
            TextFormField(

              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email here',
                hoverColor: Colors.purpleAccent,
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 35,
            ),
            TextFormField(
              obscureText: _isHidden,
              decoration: const InputDecoration(

                labelText: 'Password',
                hintText: 'Enter Password here',
                hoverColor: Colors.purpleAccent,
                border: OutlineInputBorder(),
                suffix: Icon(Icons.visibility)
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context) =>LetStart( )));
              },
                child: Text('Login',
                  style: TextStyle(fontWeight: FontWeight.bold ,
                      color: Colors.white),

                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shadowColor: Colors.purpleAccent,
                  elevation: 10,
                ),

              ) ,
            ),

          ],
        ),
      ),
      ),
      ),
    );
  }

  }


