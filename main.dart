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
          body: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              margin:EdgeInsets.all(10),
              child: Column(
                children:[

                  Image.asset('Rabbitcal.jpg',width:400,height:400),

                    Container(
                      padding: EdgeInsets.all(10),
                      margin:EdgeInsets.all(10),
                      child: RaisedButton(
                        child: Text('등록'),
                        color:Colors.white,
                        onPressed: () {},
                  ),
                    ),
                    Container(
                          padding: EdgeInsets.all(10),
                          margin:EdgeInsets.all(10),
                      child: RaisedButton(
                        style: RaisedButton.styleFrom(

                        ),
                          child: Text('추천'),
                          color:Colors.white,
                          onPressed: () {}
                      ),
                    ),
                  ]
    ),
    ),
          ),
    );
  }
}

