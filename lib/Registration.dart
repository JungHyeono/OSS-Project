import 'package:flutter/material.dart';

enum person {male,female}

class Rabbitcal_regitstraion extends StatefulWidget {
  const Rabbitcal_regitstraion({Key? key}) : super(key: key);

  @override
  State<Rabbitcal_regitstraion> createState() => _Rabbitcal_regitstraionState();

}
class _Rabbitcal_regitstraionState extends State<Rabbitcal_regitstraion> {
  person? _human =person.male;//_human에 성별들어감

  final _formKey=GlobalKey<FormState>();
  final _formKey2=GlobalKey<FormState>();
  final _formKey3=GlobalKey<FormState>();
  final _formKey4=GlobalKey<FormState>();
  final _formKey5=GlobalKey<FormState>();
  final _formKey6=GlobalKey<FormState>();
  final _formKey7=GlobalKey<FormState>();
  final _valueList=['저체중 강인형','표준체중 강인형','과체중 강인형'];
  var _selectedvalue='저체중 강인형';

  String result="";
  double Weight=0;
  double Height=0;
  double Right_arm_muscle=0;
  double Left_arm_muscle=0;
  double Right_leg_muscle=0;
  double Left_leg_muscle=0;
  double Body_fat=0;

  void compare()
  {
    if(_human==person.male)
      {
        if(_selectedvalue=='저체중 강인형')
          {

          }
        else if(_selectedvalue=='표준체중 강인형')
          {

          }
        else{

        }
      }

    else{

    }
  }
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

                  value: _selectedvalue,
                  items:_valueList.map((String item){
                    return DropdownMenuItem<String>(
                      child:Text('$item'),
                      value:item,
                    );
                  },
                  ).toList(),
                  onChanged:(dynamic value){
                    setState(()
                    {
                      _selectedvalue=value;
                    }
                    );
                  },
                ),

                Form(
                  key:_formKey,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },
                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'몸무게'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Weight =double.parse(value);
                      },
                    ),
                  ),
                ),

                Form(
                  key:_formKey2,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },

                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'키'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Height =double.parse(value);
                      },
                    ),
                  ),
                ),

                Form(
                  key:_formKey3,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },

                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'오른 팔 근육량'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Right_arm_muscle =double.parse(value);
                      },
                    ),
                  ),
                ),

                Form(
                  key:_formKey4,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },

                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'왼 팔 근육량'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Left_arm_muscle =double.parse(value);
                      },
                    ),
                  ),
                ),
                Form(
                  key:_formKey5,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },

                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'오른 다리 근육량'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Right_leg_muscle =double.parse(value);
                      },
                    ),
                  ),
                ),
                Form(
                  key:_formKey6,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },

                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'왼 다리 근육량'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Left_leg_muscle =double.parse(value);
                      },
                    ),
                  ),
                ),
                Form(
                  key:_formKey7,
                  child: Container(
                    width:500,height:70,
                    child: TextFormField(
                      validator:(value)
                      {
                        if(value==null||value.isEmpty)
                        {
                          return '정보를 입력하세요.';
                        }
                        return null;
                      },

                      style: TextStyle(fontSize:22),
                      textAlign:TextAlign.center,
                      decoration: InputDecoration(labelText:'체지방량'),
                      textInputAction: TextInputAction.next,
                      onChanged: (value){
                        Body_fat =double.parse(value);
                      },
                    ),
                  ),
                ),
                Builder(
                    builder: (ctx) {
                      return Container(
                        width:100,
                        child: RaisedButton(
                          child: Text('확인',
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:30,
                            ) ,
                          ) ,
                          onPressed:(){
                            if(_formKey.currentState!.validate()||_formKey2.currentState!.validate()||_formKey3.currentState!.validate()||_formKey4.currentState!.validate()||_formKey5.currentState!.validate()||_formKey6.currentState!.validate()||_formKey7.currentState!.validate()){
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
                            }
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
