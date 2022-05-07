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
            Container(color: Colors.lightBlueAccent,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: 200,height: 200,color: Colors.blue,),
                Stack(children: [
                  Form(
                    key: _formKey,
                      child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(icon: Icon(Icons.account_circle),labelText: "Email"),
                      ),
                      TextFormField(
                        controller: _passwordController,
                      ),
                      Container(height: 20,),
                      Text("비밀번호를 잊어버리셨나요?"),
                    ],
                  )),
                  Container(width: 100,height: 50),
                ],),
                Container(height:50,),
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
