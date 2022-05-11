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
      home: Rabbitcalmain(),
    );
  }
}

class Rabbitcalmain extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:Text('Rabbitcal',style:TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 40,
          ),
          ),
          centerTitle:true,
        ),
        body: Center(
        child: Container(
    child: Column(
    children:<Widget>[
    Container(
    child: Image.asset('assets/rabbitcal.jpg',width:300,height:300)
    ),
    ),
    ),
    ),