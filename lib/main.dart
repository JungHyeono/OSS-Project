import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Rabbitcal App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Rabbitcalmain(),
    );
  }
}
class Rabbicalmain extends StatelessWidget {
  const Rabbicalmain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
