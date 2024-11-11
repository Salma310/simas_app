import 'package:flutter/material.dart';
import 'package:simas_app1/home_screen/task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(
          title: 'Intercom',
          subtitle: 'Nasywa Salma',
          teamProgress: '7/8',
          dueDate: 'July 3, 2022',
        ),
        TaskItem(
          title: 'Seminar Nasional',
          subtitle: 'Nabilah Rahmah',
          teamProgress: '5/8',
          dueDate: 'July 15, 2022',
        ),
        TaskItem(
          title: 'JTI Fest',
          subtitle: 'A Faqih',
          teamProgress: '2/8',
          dueDate: 'July 23, 2022',
        ),
      ],
    );
  }
}
