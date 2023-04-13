import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'dart:js'; remove this package

import 'package:ab_tak_news/view/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement<void, dynamic>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 230,),

            Image.asset('assets/images/news.png',width: 200,),
            SizedBox(height: 15,),
            SpinKitPouringHourGlassRefined(
              color: Colors.white,
              size: 50.0,
            ),

            Spacer(),
            Text("Mode by shiva",style: TextStyle(fontFamily: "shiva",fontSize: 20,),),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
