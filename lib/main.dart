import 'package:flutter/material.dart';
import 'package:shop_basic_app/constants.dart';
import 'package:shop_basic_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      //9
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: backgroundColor,
      ),

     
      home: HomeScreen(),
    );
  }
}

