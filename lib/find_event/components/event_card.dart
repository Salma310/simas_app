import 'package:flutter/material.dart';
import 'package:simas_app1/detail_event/detail_event_screen.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  final String teamCount;
  final String dueDate;

  const EventCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.teamCount,
    required this.dueDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman DetailEventScreen
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DetailEventScreen()), // Ganti dengan halaman DetailEventScreen
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 4,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xFF2051E5),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xFF0D1829),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        SizedBox(height: 11),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: Color(0xB30D1829),
                            fontSize: 14,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Team',
                      style: TextStyle(
                        color: Color(0xFF0D1829),
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      teamCount,
                      style: TextStyle(
                        color: Color(0x690D1829),
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Due date',
                      style: TextStyle(
                        color: Color(0x990D1829),
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        Icon(Icons.calendar_today,
                            size: 14, color: Color(0xFF445668)),
                        SizedBox(width: 6),
                        Text(
                          dueDate,
                          style: TextStyle(
                            color: Color(0xFF445668),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
