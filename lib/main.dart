import 'package:ab_tak_news/splash_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
   class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: SplashScreen(),
         title: 'Ab Tak News',
         theme: ThemeData(
           primarySwatch: Colors.deepOrange,
         ),
       );
     }
   }
