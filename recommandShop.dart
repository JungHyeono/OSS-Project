import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:flutter/material.dart';



void main() async{
  runApp(const MyApp());
  print(fetchRecommandPd());
}

Future<recommandPd> fetchRecommandPd() async{
  String url="https://my-json-server.typicode.com/juhojang/coupang/db";
  var response=await http.get(url);

  if(response.statusCode==200){
    return recommandPd.fromJson(json.decode(response.body));
  } else{
    throw Exception('failed to load post');
  }
}

class recommandPd {
  List<ProteinPowder>? proteinPowder;
  List<Aerobic>? aerobic;
  List<Weight>? weight;

  recommandPd({this.proteinPowder, this.aerobic, this.weight});

  factory recommandPd.fromJson(Map<String, dynamic> parsedjson) {

    var list1=parsedjson['proteinPowder'] as List;
    var list2=parsedjson['aerobic'] as List;
    var list3=parsedjson['weight'] as List;

    List<ProteinPowder> proteinPowderList = list1.map((e) => ProteinPowder.fromJson(e)).toList();
    List<Aerobic> aerobicList = list2.map((f) => Aerobic.fromJson(f)).toList();
    List<Weight> weightList = list3.map((g) => Weight.fromJson(g)).toList();


    return recommandPd(
      proteinPowder: proteinPowderList,
      aerobic: aerobicList,
      weight: weightList
    );
  }
}

class ProteinPowder {
  int? id;
  String? image;
  String? title;
  String? price;

  ProteinPowder({this.id, this.image, this.title, this.price});

  factory ProteinPowder.fromJson(Map<String, dynamic> parsedjson) {
    return ProteinPowder(
        id :parsedjson['id'],
        image : parsedjson['image'],
        title : parsedjson['title'],
        price : parsedjson['price']);
  }
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
                      child: Image.network("https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/rs_quotation_api/9snggkvl/70e4f9a748ae4990a2f8d2f4871a1d96.jpg")
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

