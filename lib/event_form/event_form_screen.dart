import 'package:flutter/material.dart';
import 'package:simas_app1/event_form/components/app_bar.dart';
import 'package:simas_app1/event_form/components/pic_input.dart';
import 'package:simas_app1/event_form/components/activity_details.dart';
import 'package:simas_app1/event_form/components/assignment_letter.dart';
import 'package:simas_app1/event_form/components/submit_button.dart';

class EventFormScreen extends StatelessWidget {
  const EventFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 44),
              PICInput(),
              SizedBox(height: 29),
              ActivityDetails(),
              SizedBox(height: 65),
              AssignmentLetter(),
              SizedBox(height: 125),
              SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}