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
              onTap: () {}
            ),
            ListTile(
              leading: Icon(Icons.navigate_next),
              title: Text('웨이트운동기구'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {}
            )
          ],
        ));
  }
}


var titleList=[
  "a보충제",
  "b보충제",
  "c보충제"
];

var imageList=[
  "a보충제 사진",
  "b보충제 사진",
  "c보충제 사진"
];

var infoList=[
  "100년 전통",
  "아미노산 고함유",
  "발암물질 0%"
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
        itemCount: titleList.length,
          itemBuilder: (context, index){
            return GestureDetector(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width:50,
                      height: 50,
                      child: Image.asset(imageList[index])
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleList[index],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 100,
                            child: Text(
                              infoList[index],
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

