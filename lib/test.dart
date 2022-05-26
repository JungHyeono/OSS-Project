import 'package:flutter/material.dart';

class test extends StatefulWidget {
  final String Data;
  const test(this.Data);
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('data:${widget.Data}'),
    );
  }
}
