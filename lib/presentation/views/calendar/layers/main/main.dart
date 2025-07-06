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
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return DraggableScrollableSheet(
                        initialChildSize: 0.7,
                        minChildSize: 0.2,
                        maxChildSize: 0.95,
                        builder: (_, controller) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF2A2D41),
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            child: ListView(
                              controller: controller,
                              padding: EdgeInsets.all(20),
                              children: [
                                Text(
                                  "Новый План",
                                  style: GoogleFonts.inter(color: Color.fromARGB(255, 200, 200, 200), fontSize: 20),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
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
