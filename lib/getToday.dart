import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Check extends StatefulWidget {
  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int _counter = 0;
  List<String> date=[];

  String getToday(){
    DateTime now =DateTime.now();
    DateFormat formatter=DateFormat('yyyy-MM-dd');
    String today=formatter.format(now);
    return today;
  }

  void addToday(){
    date.add(getToday());
    date=date.toSet().toList();
  }

  String userName(int num){
    if(num>=0 && num<=10)
      return '헬린이';
    else if(num>10 && num<=20)
      return '헬중딩';
    else if(num>20 && num<=30)
      return '헬고딩';
    else if(num>30 && num<=40)
      return '헬대딩';
    else if(num>40 && num<=50)
      return '헬직딩';
    else if(num>60 && num<=70)
      return '운동성애자';
    return "헬창";
  }

  @override
  void initState() {
    super.initState();
    _loadDateList();
  }

  _loadDateList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      date = prefs.getStringList('date')??[];
    });
  }

  _incrementDateList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      date = prefs.getStringList('date')??[];
      addToday();
      prefs.setStringList('date', date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rabbitcal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '출석체크를 하려면 버튼을 클릭하세요.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              '출석체크 ${date.length} 일차! \n 등급 : <${userName(date.length)}> 입니다!',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementDateList,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
