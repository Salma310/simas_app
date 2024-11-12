import 'package:flutter/material.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  final List<dynamic> events; // Data dari API

  const TaskList({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return TaskItem(
          title: event['event_name'] ?? 'No Title',
          jenisEvent: event['event_jenis'] ?? 'No Type',
          pic: event['pic'] ?? 'No PIC',
          dueDate: event['date'] ?? 'No Date',
        );
      },
    );
  }
}
