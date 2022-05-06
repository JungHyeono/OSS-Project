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

