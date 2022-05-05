import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(color: Colors.red,),
            Column(
              children: [
                Container(width: 200,height: 200,color: Colors.blue,),
                Stack(children: [
                  Container(width: 200,height: 200,color: Colors.amber,),
                  Container(width: 200,height: 200,color: Colors.black,),
                ],),
                Container(width: 200,height: 200,color: Colors.white,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
