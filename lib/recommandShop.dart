import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

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

var url_List1_1=[
  "https://www.coupang.com/vp/products/6131148033?itemId=11692926613&vendorItemId=78967251780&pickType=COU_PICK&q=%EC%B9%BC%EB%A1%9C%EB%B0%94%EC%9D%B4+%ED%8D%BC%ED%8E%99%ED%8A%B8+%ED%8C%8C%EC%9B%8C%EC%89%90%EC%9D%B4%ED%81%AC+%EC%95%84%EC%9D%B4%EC%86%94%EB%A0%88%EC%9D%B4%ED%8A%B8+%EC%B4%88%EC%BD%94%EB%A7%9B%2C+1890g%2C+1%EA%B0%9C&itemsCount=6&searchId=7510fee3fd2e4a15802eb29ed89a840b&rank=1&isAddedCart=",
  "https://www.coupang.com/vp/products/8838078?itemId=9080897&vendorItemId=3280597288&q=%EC%8B%A0%ED%83%80-6+%ED%94%84%EB%A1%9C%ED%8B%B4+%ED%8C%8C%EC%9A%B0%EB%8D%94+%EB%93%9C%EB%A7%81%ED%81%AC+%EB%AF%B9%EC%8A%A4+%EB%8B%A8%EB%B0%B1%EC%A7%88+%EB%B3%B4%EC%B6%A9%EC%A0%9C%2C+%EC%B4%88%EC%BD%9C%EB%A6%BF&itemsCount=36&searchId=c80bf89230504486beb7c0dff92917fc&rank=3&isAddedCart=",
  "https://www.coupang.com/vp/products/12849541?itemId=54093368&vendorItemId=72824366128&q=%EC%9B%90%EB%8D%B0%EC%9D%B4%EB%89%B4%ED%8A%B8%EB%A6%AC%EC%85%98+%EB%A8%B8%EC%8A%AC%ED%82%B9+80+%ED%94%84%EB%A1%9C%ED%8B%B4+%ED%97%AC%EC%8A%A4+%EB%B3%B4%EC%B6%A9%EC%A0%9C&itemsCount=31&searchId=26c56dfc8b97407da11357a19d08e7b4&rank=2&isAddedCart=",
  "https://www.coupang.com/vp/products/19977043?itemId=3071491018&vendorItemId=4041827021&pickType=COU_PICK&q=%EB%A8%B8%EC%8A%AC%ED%8C%9C+%EC%BB%B4%EB%B1%83+%EC%9A%B8%ED%8A%B8%EB%9D%BC+%EC%9B%A8%EC%9D%B4+%ED%94%84%EB%A1%9C%ED%8B%B4+%ED%8C%8C%EC%9A%B0%EB%8D%94+%EB%93%9C%EB%A7%81%ED%81%AC+%EB%AF%B9%EC%8A%A4+%EB%8B%A8%EB%B0%B1%EC%A7%88+%EB%B3%B4%EC%B6%A9%EC%A0%9C&itemsCount=36&searchId=eca6913f434345d0b205d3914991d803&rank=1&isAddedCart=",
  "https://www.coupang.com/vp/products/5547481294?itemId=8755227685&vendorItemId=76042171966&q=%5B%EC%BF%A0%ED%8C%A1%EC%88%98%EC%9E%85%5D+%EB%A8%B8%EC%8A%AC%ED%8C%9C+%EC%BB%B4%EB%B1%83+%EC%9B%A8%EC%9D%B4+%ED%94%84%EB%A1%9C%ED%8B%B4+%ED%8C%8C%EC%9A%B0%EB%8D%94+%EB%94%B8%EA%B8%B0%2C+2269g%2C&itemsCount=36&searchId=2ae9b4846b9c4907abf23b6eb44e0b7c&rank=1&isAddedCart=",
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

var url_List1_2=[
  "https://www.coupang.com/vp/products/1079386660?itemId=328050720&vendorItemId=4123585502&pickType=COU_PICK&q=%EC%9D%B4%EA%B3%A0%EC%A7%84+8320+%EC%8A%A4%ED%85%9D%ED%8D%BC%2C+%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC%2C+1%EA%B0%9C&itemsCount=5&searchId=30b8736ef15344e3bc58205a981ec6be&rank=1&isAddedCart=",
  "https://www.coupang.com/vp/products/6109662236?itemId=11506393946&vendorItemId=79447857370&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=3a625ccd-80e0-439b-83b5-92f293b5c088&korePlacement=15&koreSubPlacement=1&q=%EB%A7%A5%EC%8A%AC%EB%A6%AC+%EB%A7%90%EB%9E%91%EC%9D%B4+%EC%8A%A4%ED%85%9D%ED%8D%BC+%EC%97%90%EC%96%B4%EC%BF%A0%EC%85%98+%EA%B3%84%EB%8B%A8%EC%98%A4%EB%A5%B4%EA%B8%B0+%EB%8B%A4%EC%9D%B4%EC%96%B4%ED%8A%B8+%EC%9C%A0%EC%82%B0%EC%86%8C+%EC%9A%B4%EB%8F%99%EA%B8%B0%EA%B5%AC%2C+%EB%B8%94%EB%A3%A8&itemsCount=5&searchId=64928edb47ce4cbeab7374ea5fcb6a78&rank=0&isAddedCart=",
  "https://www.coupang.com/vp/products/5547939691?itemId=8757617820&vendorItemId=76044546900&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=6bda0fd9-00ae-4b40-aa99-eeea5da3a1ca&korePlacement=15&koreSubPlacement=1&q=%ED%94%BC%ED%8B%B0%EC%A6%98+%EA%B0%80%EC%A0%95%EC%9A%A9+%EC%9C%A0%EC%82%B0%EC%86%8C+%EC%A0%84%EC%8B%A0%EC%9A%B4%EB%8F%99+%EB%A1%9C%EC%9E%89%EB%A8%B8%EC%8B%A0%2C+%EC%8B%A4%EB%B2%84&itemsCount=5&searchId=bc02a17dedd34ee49dc9c758d8676d1d&rank=0&isAddedCart=",
  "https://www.coupang.com/vp/products/107524616?itemId=223657688&vendorItemId=3543192030&pickType=COU_PICK&q=%EB%A9%9C%ED%82%A8%EC%8A%A4%ED%8F%AC%EC%B8%A0+%EC%8A%A4%ED%95%80%EB%B0%94%EC%9D%B4%ED%81%AC+15kg+18kg&itemsCount=36&searchId=cfb2a8c6c9e74baea886d277bd52c0f0&rank=1&isAddedCart=",
  "https://www.coupang.com/vp/products/261120257?itemId=816500447&vendorItemId=3216352170&pickType=COU_PICK&q=%EC%97%91%EC%82%AC%EC%9D%B4%EB%8D%94+%EC%A0%91%EC%9D%B4%EC%8B%9D+%EC%8B%A4%EB%82%B4%EC%9E%90%EC%A0%84%EA%B1%B0%2C+CF1000C%2C+%ED%99%94%EC%9D%B4%ED%8A%B8&itemsCount=11&searchId=8f7f6d773d124e84890fa78f721041f4&rank=1&isAddedCart="
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

var url_List1_3=[
  "https://www.coupang.com/vp/products/5547697822?itemId=8756619431&vendorItemId=81633294690&pickType=COU_PICK&q=%EC%88%9C%EC%9E%A0+%ED%83%80%EB%8B%88+%EA%B0%80%EC%A0%95%EC%9A%A9+%EB%8B%A4%EC%9A%A9%EB%8F%84+%EC%B2%A0%EB%B4%89+%EC%9A%B4%EB%8F%99%EA%B8%B0%EA%B5%AC%2C+%EB%B8%94%EB%9E%99&itemsCount=5&searchId=43a7ee7a761e46a8850abcf9b22f46d4&rank=1&isAddedCart=",
    "https://www.coupang.com/vp/products/6273497429?itemId=12842897581&vendorItemId=80108449419&q=%EC%97%90%EC%9D%B4%EC%8A%A4%ED%8C%8C%EC%9B%8C+++%EC%9A%B4%EB%8F%99%EB%A7%A4%ED%8A%B8&itemsCount=7&searchId=6a50ee24e09542a1ae4320f50ea9b01b&rank=1&isAddedCart=",
    "https://www.coupang.com/vp/products/181946062?itemId=521259038&vendorItemId=4347540818&q=%EB%B0%98%EC%84%9D%EC%8A%A4%ED%8F%AC%EC%B8%A0+%EB%B9%84%EC%8A%A4%ED%8E%99%ED%92%80%EC%97%85+%EC%B2%A0%EB%B4%89%2C+%EC%98%90%EB%A1%9C%EC%9A%B0&itemsCount=7&searchId=ab0e810dd40340a09b50d5365bfb028f&rank=1&isAddedCart=",
    "https://www.coupang.com/vp/products/6169047890?itemId=12028816890&vendorItemId=79652405740&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=39b2694b-0dd5-4963-8e40-9c96408c2466&korePlacement=15&koreSubPlacement=1&q=%ED%8A%B8%EC%9C%88%EB%B8%8C%EB%A1%9C+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84+%ED%8A%B8%EC%9C%88%EC%88%98%ED%8F%89+%EB%AC%B8%ED%8B%80%EC%B2%A0%EB%B4%89+%EA%B0%80%EC%A0%95%EC%9A%A9+%ED%84%B1%EA%B1%B8%EC%9D%B4+%EC%9A%B4%EB%8F%99%EA%B8%B0%EA%B5%AC+%ED%92%80%EC%97%85%EB%B0%94&itemsCount=6&searchId=71db9dbc7a1343fd96f14fa01a3f2e3d&rank=0&isAddedCart=",
    "https://www.coupang.com/vp/products/6356322906?itemId=13397776186&vendorItemId=79927428047&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=e9f31bac-822b-4bfb-90c7-9b4682162e8c&korePlacement=15&koreSubPlacement=1&q=%ED%99%88%ED%8A%B8%ED%95%8F+%EA%B0%80%EC%A0%95%EC%9A%A9+2%EC%A4%91%EC%9E%A0%EA%B8%88+%EB%AC%B8%ED%8B%80%EC%B2%A0%EB%B4%89+%EC%88%98%ED%8F%89%EA%B3%84+%EB%B8%94%EB%9E%99%2C+%ED%98%BC%ED%95%A9+%EC%83%89%EC%83%81&itemsCount=2&searchId=c8ac15de44214796915fe16d014941c4&rank=0&isAddedCart=",
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
            itemCount: titleList1_1.length,
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  _launchInBrowser(url_List1_1[index]);
                },
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
                            Container(
                                width: 270,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                        child:
                                        RichText(
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 5,
                                          strutStyle: StrutStyle(fontSize: 16.0),
                                          text:
                                          TextSpan(
                                              text: titleList1_1[index],
                                              style:
                                              TextStyle(
                                                color: Colors.black,
                                                height: 1.4,
                                                fontSize: 14.0,)
                                          ),
                                        )
                                    ),
                                  ],
                                )
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
                onTap: (){
                  _launchInBrowser(url_List1_2[index]);
                },
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
                            Container(
                                width: 270,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                        child:
                                        RichText(
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 5,
                                          strutStyle: StrutStyle(fontSize: 16.0),
                                          text:
                                          TextSpan(
                                              text: titleList1_2[index],
                                              style:
                                              TextStyle(
                                                color: Colors.black,
                                                height: 1.4,
                                                fontSize: 14.0,)
                                          ),
                                        )
                                    ),
                                  ],
                                )
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
                onTap: (){
                  _launchInBrowser(url_List1_3[index]);
                },
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
                            Container(
                            width: 270,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                    child:
                                    RichText(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 5,
                                      strutStyle: StrutStyle(fontSize: 16.0),
                                      text:
                                      TextSpan(
                                          text: titleList1_3[index],
                                          style:
                                          TextStyle(
                                              color: Colors.black,
                                              height: 1.4,
                                              fontSize: 14.0,)
                                      ),
                                    )
                                ),
                              ],
                            )
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
