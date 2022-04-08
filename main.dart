import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Rabbitcal'),
      ),
          body:Column(
crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Image.asset('Rabbitcal.jpg',
              width:500,height:500,
              ),

             Container( Text('인바디 등록',
              style:TextStyle(fontSize:40),
              ),),
              Text('운동추천',
              style:TextStyle(fontSize:40),),
            ]
          )

    );
  }
}

