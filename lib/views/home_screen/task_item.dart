import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title; // Nama Event
  final String jenisEvent; // Jenis Event
  final String pic; // PIC Event
  final String dueDate; // Tanggal Event

  const TaskItem({
    Key? key,
    required this.title,
    required this.jenisEvent,
    required this.pic,
    required this.dueDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header dengan Judul dan Jenis Event
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Event
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF0D1829),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: 4),
                  // Jenis Event
                  Text(
                    jenisEvent,
                    style: TextStyle(
                      color: Color(0xB30D1829),
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              // PIC Event
              Text(
                pic,
                style: TextStyle(
                  color: Color(0xFF2051E5),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Due Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tanggal:',
                style: TextStyle(
                  color: Color(0x990D1829),
                  fontSize: 14,
                  fontFamily: 'Inter',
                ),
              ),
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
    );
  }
}
