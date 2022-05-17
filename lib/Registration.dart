import 'package:flutter/material.dart';

enum person {male,female}

class Rabbitcal_regitstraion extends StatefulWidget {
  const Rabbitcal_regitstraion({Key? key}) : super(key: key);

  @override
  State<Rabbitcal_regitstraion> createState() => _Rabbitcal_regitstraionState();

}

class _Rabbitcal_registrationState extends State<Rabbitcal_registration> {
  person? _human =person.male;

  final _valueList=['저체중 강인형','표준체중 강인형','과체중 강인형'];
  var _selectedvalue='저체중 강인형';

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
          child:SingleChildScrollView
            (child: ListBody(
              children:<Widget>[
                ListTile(
                  title: const Text('남자'),
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

                DropdownButton(
                  onChanged:(){};
                ),

                Container(
                  width:500,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:22),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(labelText:'몸무게'),
                    textInputAction: TextInputAction.next,
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
                    decoration: InputDecoration(labelText:'키'),
                    textInputAction: TextInputAction.next,
                    onChanged: (value){
                      Height =double.parse(value);
                    },
                  ),
                ),

                Container(
                  width:500,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:22),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(labelText:'오른팔 근육량'),
                    textInputAction: TextInputAction.next,
                    onChanged: (value){
                      Right_arm_muscle =double.parse(value);
                    },
                  ),
                ),

                Container(
                  width:500,height:70,
                  child: TextField(
                    style: TextStyle(fontSize:22),
                    textAlign:TextAlign.center,
                    decoration: InputDecoration(labelText:'왼팔 근육량'),
                    textInputAction: TextInputAction.next,
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
                    decoration: InputDecoration(labelText:'오른 다리 근육량'),
                    textInputAction: TextInputAction.next,
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
                    decoration: InputDecoration(labelText:'왼 다리 근육량'),
                    textInputAction: TextInputAction.next,
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
                    decoration: InputDecoration(labelText:'체지방'),
                    textInputAction:TextInputAction.next,
                    onChanged: (String value){
                      Body_fat=double.parse(value);
                    },
                  ),
                ),
                Builder(
                    builder: (ctx) {
                      return Container(
                        width:200,
                        child: RaisedButton(
                          child: Text('확인',
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:30,
                            ) ,
                          ) ,
                          onPressed:(){
                            Scaffold.of(ctx).showSnackBar(SnackBar(
                              content:Text('등록 완료!',
                                  textAlign: TextAlign.center,
                                  style:TextStyle(
                                      color:Colors.white
                                  )
                              ),
                              backgroundColor: Colors.teal,
                              duration:Duration(milliseconds:1000),
                            ),
                            );
                          },
                        ),
                      );
                    }
                ),
              ]
          ),
          )
      ),
    );
  }
}