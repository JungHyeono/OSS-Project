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
              onTap: () {}
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
