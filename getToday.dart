import 'package:intl/intl.dart';

void main() {
  print(getToday());
}


String getToday(){
  DateTime now =DateTime.now();
  DateFormat formatter=DateFormat('yyyy-MM-dd');
  String today=formatter.format(now);
  return today;
}
