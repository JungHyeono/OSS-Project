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
      ]
    )
      ),
    );
  }
}