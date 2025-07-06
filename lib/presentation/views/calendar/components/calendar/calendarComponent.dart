import 'package:dart_template/core/utils/dateUtils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarComponent extends StatefulWidget {
  final DateTime displayDate;
  final VoidCallback? onPrev;
  final VoidCallback? onNext;

  CalendarComponent({required this.displayDate, this.onPrev, this.onNext});

  List<String> daysOfWeek = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];

  @override
  State<StatefulWidget> createState() => _CalendarComponentState();
}


class _CalendarComponentState extends State<CalendarComponent> {


  @override
  Widget build(BuildContext context) {
    final DateTime now = widget.displayDate;
    final int year = now.year;
    final int month = now.month;
    final firstWeekday = DateTime(year, month, 1).weekday;
    final int daysInMonth = DateTime(year, month + 1, 0).day;
    final int prevMonthDays = DateTime(year, month, 0).day;
    final int startPadding = firstWeekday - 1;

    List<int> days = [];

    for (int i = startPadding - 1; i >= 0; i--) {
      days.add(prevMonthDays - i);
    }

    for (int i = 1; i <= daysInMonth; i++) {
      days.add(i);
    }

    int totalCells = startPadding + daysInMonth;
    int roundedCellCount = (totalCells / 7).ceil() * 7;

    for (int i = 1; days.length < roundedCellCount; i++) {
      days.add(i);
    }


    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 330,
        decoration: BoxDecoration(
            color: Color(0xFF2A2D41),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(45, 0, 0, 0),
              blurRadius: 20,
              spreadRadius: 3,
            )
          ]
        ),
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(155, 130, 180, 180),),
                    onPressed: widget.onPrev,
                  ),

                  Text(
                    "${getMonthName(widget.displayDate.month)} ${widget.displayDate.year}",
                    style: GoogleFonts.inter(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(200, 130, 180, 180),
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(40, 0, 0, 0),
                          blurRadius: 15,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Color.fromARGB(155, 130, 180, 180),),
                    onPressed: widget.onNext,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15), child:
            SizedBox(height: 20, child:
            GridView.count(
              crossAxisCount: 7,
              shrinkWrap: true,
                padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 2.5,
              children: widget.daysOfWeek.map((day) {
                return Center(
                  child: Text(
                    day,
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 140, 140, 140),
                      fontSize: 14,
                    ),
                  ),
                );
              }).toList(),
            ),

            ),),

            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 25),
                child: GridView.builder(
                  itemCount: days.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final day = days[index];
                    final isCurrentMonth = index >= startPadding && index < startPadding + daysInMonth;

                    return Center(
                      child: Text(
                        '$day',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: isCurrentMonth
                              ? Color.fromARGB(255, 90, 90, 90)
                              : Color.fromARGB(100, 80, 80, 80),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
