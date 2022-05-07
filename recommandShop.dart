import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const recommandShop(),
    );
  }
}

class recommandShop extends StatelessWidget {
  const recommandShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("상품추천"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.navigate_next),
              title: Text('단백질파우더'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shopDetail_1()));
              }
            ),
            ListTile(
              leading: Icon(Icons.navigate_next),
              title: Text('유산소운동기구'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shopDetail_2()));
              }
            ),
            ListTile(
              leading: Icon(Icons.navigate_next),
              title: Text('웨이트운동기구'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shopDetail_3()));
              }
            )
          ],
        ));
  }
}


var titleList1_1=[
  "a보충제",
  "b보충제",
  "c보충제"
];

var imageList1_1=[
  "a보충제 사진",
  "b보충제 사진",
  "c보충제 사진"
];

var infoList1_1=[
  "100년 전통",
  "아미노산 고함유",
  "발암물질 0%"
];

var titleList1_2=[
  "줄넘기",
  "러닝머신",
  "헤어밴드"
];

var imageList1_2=[
  "줄넘기 사진",
  "러닝머신 사진",
  "헤어밴드 사진"
];

var infoList1_2=[
  "100년이 지나도 끊어지지 않는 줄넘기",
  "FDA 승인",
  "땀 100% 흡수"
];

var titleList1_3=[
  "5KG 아령",
  "허리보호대",
  "10KG 아령"
];

var imageList1_3=[
  "5KG 아령사진",
  "허리보호대 사진",
  "10KG 아령 사진"
];

var infoList1_3=[
  "이정도도 못들어?",
  "아무리 무거워도 허리가 안아프다!",
  "좀 무겁네"
];

class shopDetail_1 extends StatelessWidget {
  const shopDetail_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "보충제 추천 순위",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      ListView.builder(
        itemCount: titleList1_1.length,
          itemBuilder: (context, index){
            return GestureDetector(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width:50,
                      height: 50,
                      child: Image.asset(imageList1_1[index])
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleList1_1[index],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: Text(
                              infoList1_1[index],
                            ),
                          )
                        ],

                    ),)
                  ],
                ),
              ),
            );
          })
    );
  }
}

class shopDetail_2 extends StatelessWidget {
  const shopDetail_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "보충제 추천 순위",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:
        ListView.builder(
            itemCount: titleList1_2.length,
            itemBuilder: (context, index){
              return GestureDetector(
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          width:50,
                          height: 50,
                          child: Image.asset(imageList1_2[index])
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titleList1_2[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,
                              child: Text(
                                infoList1_2[index],
                              ),
                            )
                          ],

                        ),)
                    ],
                  ),
                ),
              );
            })
    );
  }
}

class shopDetail_3 extends StatelessWidget {
  const shopDetail_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "보충제 추천 순위",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:
        ListView.builder(
            itemCount: titleList1_3.length,
            itemBuilder: (context, index){
              return GestureDetector(
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          width:50,
                          height: 50,
                          child: Image.asset(imageList1_3[index])
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titleList1_3[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,
                              child: Text(
                                infoList1_3[index],
                              ),
                            )
                          ],

                        ),)
                    ],
                  ),
                ),
              );
            })
    );
  }
}
