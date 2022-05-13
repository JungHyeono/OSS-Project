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

class Aerobic {
  int? id;
  String? image;
  String? title;
  String? price;

  Aerobic({this.id, this.image, this.title, this.price});

  factory Aerobic.fromJson(Map<String, dynamic> parsedjson) {
    return Aerobic(
        id :parsedjson['id'],
        image : parsedjson['image'],
        title : parsedjson['title'],
        price : parsedjson['price']);
  }
}

class Weight {
  int? id;
  String? image;
  String? title;
  String? price;

  Weight({this.id, this.image, this.title, this.price});

  factory Weight.fromJson(Map<String, dynamic> parsedjson) {
    return Weight(
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
              leading: Icon(Icons.blender),
              title: Text('단백질파우더 Top 5'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shopDetail_1()));
              }
            ),
            ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text('유산소운동기구 Top 5'),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>shopDetail_2()));
              }
            ),
            ListTile(
              leading: Icon(Icons.hiking),
              title: Text('웨이트운동기구 Top 5'),
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
  "칼로바이 퍼펙트 파워쉐이크 아이솔레이트 초코맛, 1890g, 1개",
  "비에스엔 신타-6 프로틴 파우더 드링크 믹스 단백질 보충제, 초콜릿 밀크셰이크(Chocolate Milkshake), 2.27kg",
  "원데이뉴트리션 머슬킹 80 프로틴 헬스 보충제, 2kg, 1개",
  "머슬팜 컴뱃 울트라 웨이 프로틴 파우더 드링크 믹스 단백질 보충제, 초콜릿 밀크(Chocolate Milk), 2278g",
  "[쿠팡수입] 머슬팜 컴뱃 웨이 프로틴 파우더 딸기, 2269g, 1개"
];

var imageList1_1=[
  "https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/rs_quotation_api/9snggkvl/70e4f9a748ae4990a2f8d2f4871a1d96.jpg",
  "https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/images/2019/03/20/18/5/c73778e6-ec20-42b9-bea7-3b16078d27a0.jpg",
  "https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/0b24/5fa9e4312cb782770eb8a4eef5a12e4d4d52390d3df35c03feaffe6f28ac.jpg",
  "https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/08b0/90ca62a03743c8bbdb181e43793d6ff5ff97e880e77cc6dc92bf25fe1f53.jpg",
  "https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/2000679501912097-701096e8-c948-43fd-b3ae-2afc6ef8d2ec.jpg",
];

var infoList1_1=[
  "66,400",
  "58,480",
  "35,500",
  "69,260",
  "58,400"
];

var titleList1_2=[
  "이고진 8320 스텝퍼, 블랙핑크, 1개",
  "맥슬리 말랑이 스텝퍼 에어쿠션 계단오르기 다이어트 유산소 운동기구, 블루",
  "피티즘 가정용 유산소 전신운동 로잉머신, 실버",
  "멜킨스포츠 스핀바이크 15kg 18kg 실내자전거 가정용 스피닝 유산소 운동 기구 하체, 클럽형_18kg_다크네이비",
  "엑사이더 접이식 실내자전거, CF1000C, 화이트"
];

var imageList1_2=[
  "https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/4746229994156-df2f080d-b408-437f-bf39-d4b32552325a.jpg",
  "https://thumbnail7.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/7f91/98d79334759d10261a8a41a823233c9e77b3d938b7737644fef66979eb15.jpg",
  "https://thumbnail10.coupangcdn.com/thumbnails/remote/230x230ex/image/retail/images/185871533019086-513453a6-4f71-458e-a879-ef6f4de1925d.png",
  "https://thumbnail7.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/6299/7d6fad83694341b1e851c336e37415abac2f9879d4a38ae7c952a620db3d.jpg",
  "https://thumbnail8.coupangcdn.com/thumbnails/remote/230x230ex/image/product/image/vendoritem/2019/07/16/3216352170/b422d55a-9120-4cc0-a725-cf0b961a88fa.jpg"
];

var infoList1_2=[
  "59,460",
  "18,000",
  "110,500",
  "259,000",
  "138,900"
];

var titleList1_3=[
  "순잠 타니 가정용 다용도 철봉 운동기구, 블랙",
  "에이스파워 + 운동매트 증정 스쿼터 운동매트증정 승마운동기구 하체운동기구 다이어트, 핑크",
  "반석스포츠 비스펙풀업 철봉, 옐로우",
  "트윈브로 프리미엄 트윈수평 문틀철봉 가정용 턱걸이 운동기구 풀업바",
  "홈트핏 가정용 2중잠금 문틀철봉+수평계 블랙, 혼합 색상",
];

var imageList1_3=[
  "https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/images/2019/03/20/18/5/c73778e6-ec20-42b9-bea7-3b16078d27a0.jpg",
  "https://thumbnail9.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/7dbc/41532f213cca85474389147ac79cdbae22c21e21d364e4436ae0b7d875b4.jpg",
  "https://thumbnail6.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/0b24/5fa9e4312cb782770eb8a4eef5a12e4d4d52390d3df35c03feaffe6f28ac.jpg",
  "https://thumbnail7.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/68ac/3efba2f122fe00875ef64ea81963f94486b8ee466c0af2a8fec5d68cd788.jpg",
  "https://thumbnail7.coupangcdn.com/thumbnails/remote/230x230ex/image/vendor_inventory/d695/670b106417af70fae0dc9a34b1352c97c6e094bc5121caa72b66f1c2ce6f.jpg",
];

var infoList1_3=[
  "56,000",
  "49,000",
  "47,630",
  "29,800",
  "32,900"
];

class shopDetail_1 extends StatelessWidget {
  const shopDetail_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "단백질파우더 추천 순위 Top 5",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      ListView.builder(
        itemCount: 5,
          itemBuilder: (context, index){
            return GestureDetector(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width:50,
                      height: 50,
                      child: Image.network(imageList1_1[index])
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
            "유산소운동기구 추천 순위 Top 5",
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
                          child: Image.network(imageList1_2[index])
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
            "웨이트운동기구 추천 순위 Top 5",
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
                          child: Image.network(imageList1_3[index])
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
