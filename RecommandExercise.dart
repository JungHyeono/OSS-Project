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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail2()));
              },
            ),
            ListTile(
              leading: Image.asset('images/sixPackicon.png'),
              title: Text('몸통근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail3()));
              },
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail1_2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('전완근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail1_3()));
              },
            )
          ],
        ));
  }
}

class detail2 extends StatelessWidget {
  const detail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("다리의 세부 운동"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('대퇴근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('대퇴이두근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('대둔근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('비복근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_4()));
              },
            )
          ],
        ));
  }
}

class detail3 extends StatelessWidget {
  const detail3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("몸통의 세부 운동"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('대흉근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('복근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('승모근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('삼각근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_4()));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('광배근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_5()));
              },
            ),

          ],
        ));
  }
}




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


class veryDetail1_1 extends StatelessWidget {
  const veryDetail1_1({Key? key}) : super(key: key);


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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail1_2 extends StatelessWidget {
  const veryDetail1_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 삼두근육 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "삼두근육이란?",
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
                  'images/3du.png',
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
                            '삼두근은 한자 그대로 머리가 세 개인, 즉 근육이 이는곳(시작하는 곳)에서 세 갈래로 일어나는 근육을 말한다.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail1_3 extends StatelessWidget {
  const veryDetail1_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 전완근육 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "전완근육이란?",
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
                  'images/junwan.jpg',
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
                            '아래팔에 있는 근육',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail2_1 extends StatelessWidget {
  const veryDetail2_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대퇴근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "대퇴근이란?",
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
                  'images/daefront.png',
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
                            '넓적다리에 있는 근육. 넓적다리힘줄.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail2_2 extends StatelessWidget {
  const veryDetail2_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대퇴이두근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "대퇴이두근이란?",
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
                  'images/daeback.jpg',
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
                            '대퇴의 뒤쪽에 있는 두 갈래 머리 모양의 근육으로서 대퇴두갈래근 또는 슬와근이라고 한다. 햄스트링이라고도 한다.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail2_3 extends StatelessWidget {
  const veryDetail2_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대둔근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "대둔근이란?",
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
                  'images/daedun.jpg',
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
                            '엉덩이에 있는 큰 근육.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail2_4 extends StatelessWidget {
  const veryDetail2_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 비복근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "비복근이란?",
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
                  'images/bibok.jpg',
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
                            '하퇴부(下腿部) 후면, 장딴지의 표층(表層)에 있는 굴근(屈筋). 위는 넓적다리뼈의 하단(下端)에, 아래는 아킬레스 힘줄이 되어 뒤꿈치뼈에 붙음. 정강이뼈 신경의 지배를 받으며, 발뒤꿈치를 드는 데 중요한 구실을 함.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail3_1 extends StatelessWidget {
  const veryDetail3_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대흉근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "대흉근이란?",
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
                  'images/daehung.jpg',
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
                            '척추동물의 가슴에 있는 삼각형의 큰 근육.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail3_2 extends StatelessWidget {
  const veryDetail3_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 복근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "복근이란?",
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
                  'images/bok.jpg',
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
                            '복부(腹部)의 근육. 가슴의 앞 아래 끝에서 치골(恥骨) 위의 가장자리에 붙어서 배꼽을 사이에 두고 세로로 지나가는 근육의 총칭.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail3_3 extends StatelessWidget {
  const veryDetail3_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 승모근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "승모근이란?",
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
                  'images/seungmo.jpg',
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
                            '등의 한가운데 선에서 시작하여, 다른 근육과 함께 어깨뼈의 운동을 맡은 삼각형의 근육.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail3_4 extends StatelessWidget {
  const veryDetail3_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 삼각근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "삼각근이란?",
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
                  'images/triangle.png',
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
                            '인체의 어깨의 둥근 부분에 있으며 견관절(肩關節)을 덮고 있는, 삼각형 모양의 근육.',
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
                    _launchInBrowser('https://www.youtube.com');
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

class veryDetail3_5 extends StatelessWidget {
  const veryDetail3_5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 광배근 운동법"),
        ),
        body: Column(
            children: [
              Row(children: <Widget>[
                Text(
                  "광배근이란?",
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
                  'images/gwangbae.jpg',
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
                            '등에 있는 크고 평평한 근육으로, 팔 뒤에 있어서 양옆으로 뻗어 있다.',
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
                    _launchInBrowser('https://www.youtube.com');
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


