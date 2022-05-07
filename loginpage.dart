import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {


  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(color: Colors.blue[50],),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: 200,height: 200,color: Colors.blue,),
                Container(height: 50,),
                Stack(children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      elevation: 10,
                      child: Form(
                        key: _formKey,
                          child: Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(icon: Icon(Icons.account_circle),labelText: "이메일"),
                            validator: (value){
                              if(value==' '){
                                return "올바르지 않는 이메일입니다.";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(icon: Icon(Icons.vpn_key),labelText: "비밀번호"),
                            validator: (value){
                              if(value==' '){
                                return "올바르지 않는 비밀번호입니다.";
                              }
                              return null;
                            },
                          ),
                          Container(height: 10,),
                          Text("비밀번호를 잊어버리셨나요?"),
                          Container(height: 10,),
                        ],
                      )),
                    ),
                  ),
                  Container(width: 100,height: 50),
                ],),
                Positioned(
                  left:10,
                  right: 10,
                  bottom: 0,
                  child: RaisedButton(
                      child: Text("login"),
                      color: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: (){}
                  ),
                ),
                Container(height:10,),
                Text("계정이 없으신가요? 하나 만들어보세요."),
                Container(height:30,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
