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
      ),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              margin:EdgeInsets.all(10),
              child: Column(
                children:<Widget>[

                  Container(
                      child: Image.asset('Rabbitcal.jpg',width:400,height:400)
                  ),

                    Container(
                      width:250,height:100,
                      padding: EdgeInsets.all(10),
                      margin:EdgeInsets.all(10),
                      child: RaisedButton(
                        child: Text('인바디 등록',style:TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 30,
                        ),),
                        color:Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>Rabbitcal_regitstraion())
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                  ),
                    ),
                    Container(
                      width:250,height:100,
                          padding: EdgeInsets.all(10),
                          margin:EdgeInsets.all(10),
                      child: RaisedButton(
                          child: Text('운동 추천',style:TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 30,
                          ),),
                          color:Colors.white,
                          onPressed: () {},
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

class Rabbitcal_regitstraion extends StatelessWidget {
  const Rabbitcal_regitstraion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body:Center(
        child: RaisedButton(
          onPressed:(){
Navigator.pop(context);
          },
        )
      )
    );
  }
}
