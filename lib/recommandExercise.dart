import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class first extends StatelessWidget {
  final String data;
  const first(this.data);
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
              leading: Image.asset('armMuscleicon.png'),
              title: Text('팔근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail1(data)));
              },
            ),
            ListTile(
              leading: Image.asset('legMuscleicon.png'),
              title: Text('다리근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail2(data)));
              },
            ),
            ListTile(
              leading: Image.asset('sixPackicon.png'),
              title: Text('몸통근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => detail3(data)));
              },
            )
          ],
        ));
  }
}

class detail1 extends StatelessWidget {
  final String data;
  const detail1(this.data);
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
                    MaterialPageRoute(builder: (context) => veryDetail1_1(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('삼두근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail1_2(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('전완근육'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail1_3(data)));
              },
            )
          ],
        ));
  }
}

class detail2 extends StatelessWidget {
  final String data;
  const detail2(this.data);
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
                    MaterialPageRoute(builder: (context) => veryDetail2_1(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('대퇴이두근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_2(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('대둔근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_3(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('비복근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail2_4(data)));
              },
            )
          ],
        ));
  }
}

class detail3 extends StatelessWidget {
  final String data;
  const detail3(this.data);
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
                    MaterialPageRoute(builder: (context) => veryDetail3_1(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('복근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_2(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('승모근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_3(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('삼각근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_4(data)));
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('광배근'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => veryDetail3_5(data)));
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
  final String data;
  const veryDetail1_1(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 이두근육 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "이두근육이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'idu.png',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0,),
                        text: TextSpan(
                            text:
                            '하나의 근육(筋肉)이 두 개의 뼈의 부분으로부터 시작되어 그 머리가 둘로 갈라진 근육. 이를테면, 위팔 이두근·넓적다리 이두근 따위.',
                            style: TextStyle(fontSize: 17, color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 트라이셉스 덤벨 컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 인클라인 덤벨 컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 케이블 컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=NqSfpsJn8M8&t=2s');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=tONpT5wPXwU');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=qkQdIMW1xlw&t=7s');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail1_2 extends StatelessWidget {
  final String data;
  const veryDetail1_2(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 삼두근육 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "삼두근육이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  '3du.png',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '삼두근은 한자 그대로 머리가 세 개인, 즉 근육이 이는곳(시작하는 곳)에서 세 갈래로 일어나는 근육을 말한다.',
                            style: TextStyle(fontSize: 17,color: Colors.black),))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 트라이셉스 푸쉬다운입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 트라이셉스 리버스 푸쉬다운입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 트라이셉스 딥스입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=H7chkYEglGg');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=EiEoZ0tlJ7o');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=4vSP9HK3EN0');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail1_3 extends StatelessWidget {
  final String data;
  const veryDetail1_3(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 전완근육 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "전완근육이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'junwan.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '아래팔에 있는 근육',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 리스트 컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 리버스 리스트컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 조트맨컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=L-SfEPBlFCM');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=09_ZzrjeI64');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=o-paJ5hFMyg');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail2_1 extends StatelessWidget {
  final String data;
  const veryDetail2_1(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대퇴근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "대퇴근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'daefront.png',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '넓적다리에 있는 근육. 넓적다리힘줄.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 스쿼트입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 레그프레스입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 레그익스텐션입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/q6hBSSfokzY');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/EV0F_3S7Sks');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/mS9iwXhycJI');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail2_2 extends StatelessWidget {
  final String data;
  const veryDetail2_2(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대퇴이두근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "대퇴이두근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'daeback.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '대퇴의 뒤쪽에 있는 두 갈래 머리 모양의 근육으로서 대퇴두갈래근 또는 슬와근이라고 한다. 햄스트링이라고도 한다.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 스티프 데드리프트입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 루마니안 데드리프트입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 레그 컬입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/0InCElXJJ9E');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/D0e1xbdRONo');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/9w8d_EL-7e4');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail2_3 extends StatelessWidget {
  final String data;
  const veryDetail2_3(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대둔근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "대둔근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'daedun.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '엉덩이에 있는 큰 근육.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 런지입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 점프 스쿼트입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 덩키 킥입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/CaT6kHxngJE');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/A3fFpNkBu4o');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/XPxztfEFYyo');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail2_4 extends StatelessWidget {
  final String data;
  const veryDetail2_4(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 비복근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "비복근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'bibok.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '하퇴부(下腿部) 후면, 장딴지의 표층(表層)에 있는 굴근(屈筋). 위는 넓적다리뼈의 하단(下端)에, 아래는 아킬레스 힘줄이 되어 뒤꿈치뼈에 붙음. 정강이뼈 신경의 지배를 받으며, 발뒤꿈치를 드는 데 중요한 구실을 함.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 카프레이즈입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 카프레이즈입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 카프레이즈입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/YmmFMZF8A48');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/YmmFMZF8A48');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/YmmFMZF8A48');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail3_1 extends StatelessWidget {
  final String data;
  const veryDetail3_1(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 대흉근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "대흉근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'daehung.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '척추동물의 가슴에 있는 삼각형의 큰 근육.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 팔굽혀펴기입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 벤치 프레스입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 딥스입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/aoH7qNedO8k');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=0DsXTSHo3lU');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=pQSfXvaQGas');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail3_2 extends StatelessWidget {
  final String data;
  const veryDetail3_2(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 복근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "복근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'bok.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '복부(腹部)의 근육. 가슴의 앞 아래 끝에서 치골(恥骨) 위의 가장자리에 붙어서 배꼽을 사이에 두고 세로로 지나가는 근육의 총칭.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 레그레이즈입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 크런치입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 플랭크입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=oujD2ksPxp4');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=ghclqJxl8AU');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/Zq8nRY9P_cM');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail3_3 extends StatelessWidget {
  final String data;
  const veryDetail3_3(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 승모근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "승모근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'seungmo.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '등의 한가운데 선에서 시작하여, 다른 근육과 함께 어깨뼈의 운동을 맡은 삼각형의 근육.',
                            style: TextStyle(fontSize: 17,color:Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 슈러그입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 슈러그입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 업라이트 로우입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=Tppumt4gUOs');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=Tppumt4gUOs');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://youtu.be/sRWFEY1M_Jo');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}

class veryDetail3_4 extends StatelessWidget {
  final String data;
  const veryDetail3_4(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 삼각근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "삼각근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'triangle.png',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '인체의 어깨의 둥근 부분에 있으며 견관절(肩關節)을 덮고 있는, 삼각형 모양의 근육.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 사이드 레터럴 레이즈입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 밀리터리 프레스입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 덤벨 숄더 프레스입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=YdhHnZxcpgY');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=lpc1P_zj3XI');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=Ia9DYFMkMmU');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}


class veryDetail3_5 extends StatelessWidget {
  final String data;
  const veryDetail3_5(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자님에 맞는 광배근 운동법"),
        ),
        body: Column(
            children: [
              Container(height: 30,),
              Row(children: <Widget>[
                Text(
                  "광배근이란?",
                  style: TextStyle(fontSize: 30),
                ),
              ]),
              Row(children: <Widget>[
                Text(
                  " ",
                  style: TextStyle(fontSize: 10),
                ),
              ]),
              Row(children: <Widget>[
                Image.asset(
                  'gwangbae.jpg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                  Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            text:
                            '등에 있는 크고 평평한 근육으로, 팔 뒤에 있어서 양옆으로 뻗어 있다.',
                            style: TextStyle(fontSize: 17,color: Colors.black)))),
              ]
              ),
              Container(height: 30,),
              Row(children: [
                Expanded(child: Container(
                  color: Colors.black, width: 100, height: 5,))
              ],),
              if(data=='약함')
                Flexible(
                  child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      strutStyle: StrutStyle(fontSize: 16.0),
                      text:
                      TextSpan(
                        text:
                        '사용자님에게 추천하는 운동은 풀업입니다!',
                        style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='중간')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 덤벨 로우입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              if(data=='강함')
                Flexible(
                    child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text:
                        TextSpan(
                          text:
                          '사용자님에게 추천하는 운동은 바벨 로우입니다!',
                          style: TextStyle(fontSize: 30,color: Colors.black),))),
              Container(height: 30,),
              if(data=='약함')
                Row(children: [
                Expanded(child:
                GestureDetector(
                  onTap: (){
                    _launchInBrowser('https://www.youtube.com/watch?v=nWhS28U6bCY');
                  },
                  child: Container(color: Colors.white, width: 100, height: 50,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
              ]
              ),
              if(data=='중간')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=GkSJUxYxDf4');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),
              if(data=='강함')
                Row(children: [
                  Expanded(child:
                  GestureDetector(
                    onTap: (){
                      _launchInBrowser('https://www.youtube.com/watch?v=EEqGCoTuYfQ');
                    },
                    child: Container(color: Colors.white, width: 100, height: 50,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('youtubelogo.png',fit: BoxFit.fill,width: 35,height: 30,)
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
                ]
                ),

            ])
    );
  }
}
