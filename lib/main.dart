import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'bmi_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset('assets/images/start-screen.png',
                scale: 5,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'BMI Calculator',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              // SizedBox(
              //   height: 100,
              // ),
              Spacer(),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 10),
                child: Image.asset('assets/images/logo.png',
                  width: 55,
                  height: 55,
                ),
              ),
            ],
          ),
        ),
        nextScreen: BmiScreen(),
        backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
        animationDuration: const Duration(seconds: 1),
        // splashTransition: SplashTransition.,
        // centered: true,
        pageTransitionType: PageTransitionType.fade,
        duration: 2000,
        splashIconSize: double.infinity,
      ),
    );
  }
}


