import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarMainLayers extends StatefulWidget {
  @override
  _StateCalendarMainLayers createState() => _StateCalendarMainLayers();
}

class _StateCalendarMainLayers extends State<CalendarMainLayers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Планы на месяц",
                style: GoogleFonts.inter(fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromARGB(200, 160, 160, 160)),
              ),
              GestureDetector(
                onTap: () {
                
                },
                child: Icon(
                  Icons.add_circle_outline_rounded,
                  color: Color.fromARGB(200, 120, 160, 160),
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
