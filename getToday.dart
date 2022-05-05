import 'package:intl/intl.dart';

void main() {
  List<String> date=[];
  date.add(getToday());
  print(userName(date.length));
}


String getToday(){
  DateTime now =DateTime.now();
  DateFormat formatter=DateFormat('yyyy-MM-dd');
  String today=formatter.format(now);
  return today;
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
