import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: first(),
    );
  }
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님이 필요한 운동"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Image.asset('images/armMuscleicon.png'),
              title: Text('팔근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail1()));
              },
            ),
            ListTile(
              leading: Image.asset('images/legMuscleicon.png'),
              title: Text('다리근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('images/sixPackicon.png'),
              title: Text('몸통근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            )
          ],
        ));
  }
}

class detail1 extends StatelessWidget {
  const detail1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("팔의 세부 운동"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('이두근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail1_1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('삼두근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('전완근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            )
          ],
        ));
  }
}

class veryDetail1_1 extends StatelessWidget {
  const veryDetail1_1({Key? key}) : super(key: key);

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw '웹 호출 실패 $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 이두근육 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "이두근육이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'images/idu.png',
                  fit: BoxFit.fill,
                  width: 300,
                  height: 300,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '하나의 근육(筋肉)이 두 개의 뼈의 부분으로부터 시작되어 그 머리가 둘로 갈라진 근육. 이를테면, 위팔 이두근·넓적다리 이두근 따위.',
                            style: TextStyle(fontSize: 17)))),
              ]
              ),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              Row(children: [
                Text(
                  '사용자님에게 추천하는 운동은 저강도 운동입니다!', style: TextStyle(fontSize: 30),)
              ],),
              Row(children: [
                Expanded(child:
                GestureDetector(
                  onTap: (){
                    _launchInBrowser('https://www.google.com');
                  },
                  child: Container(color: Colors.white, width: 100, height: 50,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('images/youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
                          ],
                        ),
                        Column(
                          children: [
                            Center(child:
                        Text("유튜브 바로가기", style: TextStyle(fontSize: 20)))
                          ],
                        ),
                      ],),
                  ),
                ),),
              ],
              ),
            ])
    );
  }
}