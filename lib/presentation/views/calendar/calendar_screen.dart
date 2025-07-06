import 'package:dart_template/presentation/views/calendar/layers/header/header.dart';
import 'package:dart_template/presentation/views/calendar/layers/main/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CalendarScreenState();

}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232736),
      body: Column(
        children: [
          CalendarHeaderLayers(),
          CalendarMainLayers(),
        ],
      ),
    );
  }
  
  
}