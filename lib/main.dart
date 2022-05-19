import 'package:flutter/material.dart';
import 'Registration.dart';

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
        title:Text('Rabbitcal',
          style:TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle:true,
      ),
      drawer:Drawer(
        child: ListView(
          padding:EdgeInsets.zero,
          children:<Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('rabbitcal.jpg'),
                ),

                accountEmail:Text('kimjunho1231@naver.com'),
                accountName: Text('김준호'),

                decoration:BoxDecoration(
                    color:Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(40.0),
                      bottomRight:Radius.circular(40.0),
                    )
                )
            ),
            ListTile(
              leading: Icon(Icons.home,
                  color: Colors.grey[850]),
              title: Text('출석 체크'),
              onTap:(){
                print('출석체크');
              },
              trailing:Icon(Icons.check),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin:EdgeInsets.all(10),
          child: Column(
              children:<Widget>[
                CircleAvatar(
                  backgroundImage:AssetImage('assets/rabbitcal.jpg'),
                  radius: 100.0,
                ),
                Container(
                  width:250,height:70,
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
                  width:250,height:70,
                  padding: EdgeInsets.all(10),
                  margin:EdgeInsets.all(10),
                  child: RaisedButton(
                      child: Text('운동 추천',style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 30,
                      ),),
                      color:Colors.white,
                      onPressed: () { //운동추천페이지 이동
                         },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),

                Container(
                  width:250,height:70,
                  padding: EdgeInsets.all(10),
                  margin:EdgeInsets.all(10),
                  child: RaisedButton(
                      child: Text('운동기구 추천',style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 30,
                      ),),
                      color:Colors.white,
                      onPressed: () { //운동 기구 추천 페이지 이동
                         },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
