import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final data;
  final datapass;
   
  const Home({super.key, required this.data ,required this.datapass});

    
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children:<Widget> [
          Center(child: Text("the phone number  9003467598 "))
          
        ],
      )),
    );
      
    
  }
}