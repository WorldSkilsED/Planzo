import 'package:dart_template/presentation/views/calendar/components/calendar/calendarComponent.dart';
import 'package:dart_template/presentation/views/calendar/components/calendarpager/calendarpager.dart';
import 'package:flutter/material.dart';

class CalendarHeaderLayers extends StatefulWidget {
  @override
  _StateHeader createState() => _StateHeader();
}

class _StateHeader extends State<CalendarHeaderLayers> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        CalendarPager(),
      ],
    );
  }
}