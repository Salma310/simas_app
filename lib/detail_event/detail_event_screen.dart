import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'header.dart';
import 'event_details.dart';
import 'participant_list.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Event'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const Header(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Image.asset(
                        //   'assets/images/event_icon.png',
                        //   width: 24,
                        //   height: 24,
                        // ),
                        const SizedBox(width: 15),
                        // const Text(
                        //   'Detail Event',
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.w800,
                        //     fontFamily: 'Roboto',
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const EventDetails(),
                    const SizedBox(height: 6),
                    const ParticipantList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
