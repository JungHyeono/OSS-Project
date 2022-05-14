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

enum person {male,female}

class Rabbitcal_registration extends StatefulWidget {
  const Rabbitcal_registration({Key? key}) : super(key: key);

  @override
  State<Rabbitcal_registration> createState() => _Rabbitcal_registrationState();
}

class _Rabbitcal_registrationState extends State<Rabbitcal_registration> {
  person? _human =person.male;

  double Weight=0;
  double Height=0;
  double Right_arm_muscle=0;
  double Left_arm_muscle=0;
  double Right_leg_muscle=0;
  double Left_leg_muscle=0;
  double Body_fat=0;


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

        ListTile(
          leading: Radio<person>(
            value: person.male,
            groupValue:_human,
            onChanged:(person? value)
            {
              setState(()
              {
                _human=value;
              }
              );
            },
          ),
        ),
        ListTile(
          title: const Text('여자'),
          leading: Radio<person>(
            value: person.female,
            groupValue:_human,
            onChanged:(person? value)
            {
              setState(()
              {
                _human=value;
              }
              );
            },
          ),
        ),

        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'몸무게'),
            onChanged: (value){
              Weight =double.parse(value);
            },
          ),
        ),

        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'키'),
            onChanged: (value){
              Height=double.parse(value);
            },
          ),
        ),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'오른팔 근육량'),
            onChanged: (value){
              Right_arm_muscle=double.parse(value);
            },
          ),
        ),

        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'왼팔 근육량'),
            onChanged: (value){
              Left_arm_muscle =double.parse(value);
            },
          ),
        ),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'오른 다리 근육량'),
            onChanged: (value){
              Right_leg_muscle =double.parse(value);
            },
          ),
        ),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'왼 다리 근육량'),
            onChanged: (value){
              Left_leg_muscle =double.parse(value);
            },
          ),
        ),
        Container(
          width:500,height:70,
          child: TextField(
            style: TextStyle(fontSize:22),
            textAlign:TextAlign.center,
            decoration: InputDecoration(hintText:'체지방'),
            onChanged: (String value){
              Body_fat=double.parse(value);
            },
          ),
        ),
        Container(
          child: RaisedButton(
            onPressed:(){
              Navigator.pop(
                  context
              );
            },
          ),
        ),
      ]
    )
      ),
    );
  }
}