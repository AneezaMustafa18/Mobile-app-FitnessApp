import 'package:firstproject/login.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/Gym.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: FlutterSplashScreen.scale(
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,

    colors: [
      Colors.deepPurple,
      Colors.indigoAccent,
      Colors.purple
    ],
  ),
  childWidget: SizedBox(

      height: 300,
      width: 150,
      child: Image.asset("images/treadmill_8965813.png"),

    ),

  duration: const Duration(milliseconds: 3000),
  animationDuration: const Duration(milliseconds: 1000),

  onAnimationEnd: () => debugPrint("On Scale End"),

  nextScreen: const login(),
),

    );

  }
}



