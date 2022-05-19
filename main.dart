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
class Rabbitcal_regitstraion extends StatefulWidget {
  const Rabbitcal_regitstraion({Key? key}) : super(key: key);

  @override
  State<Rabbitcal_regitstraion> createState() => _Rabbitcal_regitstraionState();

}

enum Gender {Man,Women}

class _Rabbitcal_regitstraionState extends State<Rabbitcal_regitstraion> {

  int _counter=0;
   Gender _gender =Gender.Man;

   void _incrementCounter() {
     setState(() {
       _counter++;
     });
   }
    String inputs="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('Rabbitcal',style:TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 40,
          ),
          ),
        ),
        body:Center(
          child:Column(
              children:<Widget>[

              ListTile(
                title:Text('남자'),
                leading: Radio(
                  value:Gender.Man,
                  groupValue: _gender,
                  onChanged:(value){
                    setState(()
                    {
                      _gender=value;
                    });
                  },
                ),
              ),

                ListTile(
                  title:Text('여자'),
                  leading: Radio(
                    value:Gender.Women,
                    groupValue: _gender,
                    onChanged: (value){
                      setState((){
                        _gender=value;
                      }
                      );
                    },
                  ),
                ),

                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'키'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'몸무게'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'오른쪽 팔 골격근량'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'왼쪽 팔 골격근량'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'오른쪽 다리 골격근량'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'왼쪽 다리 골격근량'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'복부 골격근량'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),
                Container(

                  width:300,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:32),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(hintText:'체지방량'),
                    onChanged: (String str){
                      setState(()=>inputs =str);
                    },
                  ),
                ),

                Container(
                  child: RaisedButton(
                    onPressed:(){
                      Navigator.pop(context);
                    },
                  ),
                )
              ]
          )
            )
    );
  }
}
