import 'package:dart_template/presentation/views/calendar/components/calendar/calendarComponent.dart';
import 'package:flutter/material.dart';

class CalendarPager extends StatefulWidget {
  @override
  State<CalendarPager> createState() => _CalendarPagerState();
}

class _CalendarPagerState extends State<CalendarPager> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  void _goToPage(int index) {
    if (index < 0) return;
    _controller.animateToPage(
      index,
      duration: Duration(milliseconds: 1200),
      curve: Curves.easeInOut,
    );
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          final baseDate = DateTime.now();
          final pageDate = DateTime(baseDate.year, baseDate.month + index);
          return CalendarComponent(
            displayDate: pageDate,
            onPrev: () => _goToPage(index - 1),
            onNext: () => _goToPage(index + 1),
          );

        },
      ),
    );
  }
}
