import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  actions:<Widget>[
          TextButton(
            child:Text('로그아웃',
                style:TextStyle(
                  color:Colors.white,
                )
            ),
            onPressed: (){
            },
          ),
        ],
      ),

        body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin:EdgeInsets.all(10),
          child: Column(
              children:<Widget>[
                CircleAvatar(
                  backgroundImage:AssetImage('assets/rabbitcal.jpg'),
                  radius: 150.0,
                ),
                SizedBox(
                  height:60,
                ),
                Container(
                  width:250,height:80,
                  padding: EdgeInsets.all(10),
                  margin:EdgeInsets.all(10),
                  child: RaisedButton(
                      child: Text('인바디 등록',
                        style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      color:Colors.white,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>Rabbitcal_regitstraion(),)
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                Container(
                  width:250,height:80,
                  padding: EdgeInsets.all(10),
                  margin:EdgeInsets.all(10),
                  child: RaisedButton(
                      child: Text('운동 추천',style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 30,
                      ),),
                      color:Colors.white,
                      onPressed: () {  },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
