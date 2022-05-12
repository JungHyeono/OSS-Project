import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Rabbitcal App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Rabbitcal_registration(),
    );
  }
}

class Rabbitcal_registration extends StatefulWidget {
  const Rabbitcal_registration({Key? key}) : super(key: key);

  @override
  State<Rabbitcal_registration> createState() => _Rabbitcal_registrationState();
}

class _Rabbitcal_registrationState extends State<Rabbitcal_registration> {
  String Weight="";
  String Height="";
  String Right_arm_muscle="";
  String Left_arm_muscle="";
  String Right_leg_muscle="";
  String Left_leg_muscle="";
  String Body_fat="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Rabbitcal',style:TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 40,
        ),
        ),
        centerTitle: true,
      ),
      body:Center(
    child:Column(
      children:<Widget>[

    Container(
    width:500,height:70,
    child: TextField(
    style: TextStyle(fontSize:22),
    textAlign:TextAlign.center,
    decoration: InputDecoration(hintText:'몸무게'),
    onChanged: (String value){
    Weight =value;
    },
    ),),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'키'),
            onChanged: (String value){
              Height =value;
            },
          ),),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'오른팔 근육량'),
            onChanged: (String value){
              Right_arm_muscle =value;
            },
          ),),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'왼팔 근육량'),
            onChanged: (String value){
              Left_arm_muscle =value;
            },
          ),),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'오른다리 근육량'),
            onChanged: (String value){
              Right_leg_muscle =value;
            },
          ),),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'왼다리 근육량'),
            onChanged: (String value){
              Left_leg_muscle =value;
            },
          ),),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'체지방'),
            onChanged: (String value){
              Body_fat=value;
            },
          ),),
      ]
    )
      ),
    );
  }
}