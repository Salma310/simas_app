import 'package:flutter/material.dart';
import 'package:simas_app1/services/event_service.dart'; // Service untuk fetch data
import 'package:simas_app1/controllers/event_controller.dart';
import 'package:simas_app1/views/find_event/components/event_card.dart';

class FindEventScreen extends StatefulWidget {
  const FindEventScreen({Key? key}) : super(key: key);

  @override
  State<FindEventScreen> createState() => _FindEventScreenState();
}

class _FindEventScreenState extends State<FindEventScreen> {
  final EventService _eventService = EventService(); // Service untuk fetch data
  List<dynamic> events = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  Future<void> _loadEvents() async {
    try {
      final data = await _eventService.getAllEvents();
      setState(() {
        events = data; // Assign data events
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching events: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: const Text(
          'Find Events',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(), // Loading indikator
            )
          : events.isEmpty
              ? const Center(
                  child: Text(
                    'No events found.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: EventCard(
                        event_name: event['event_name'] ?? 'No Title',
                        event_jenis: event['event_jenis'] ?? 'No Type',
                        status: event['status'] ?? 'Unknown',
                        pic: event['pic'] ?? 'No PIC',
                        date: event['date'] ?? 'No Date',
                      ),
                    );
                  },
                ),
    );
  }
}


// import 'package:flutter/material.dart';
// // import 'package:simas_app1/find_event/components/header.dart';
// import 'package:simas_app1/views/find_event/components/search_bar.dart';
// import 'package:simas_app1/views/find_event/components/event_card.dart';

// class FindEventScreen extends StatelessWidget {
//   const FindEventScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header(),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 16),
//                       Text(
//                         'Find Event',
//                         style: TextStyle(
//                           fontSize: 26,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 24),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton(
//                             onPressed: () {},
//                             child: Text(
//                               'Discover',
//                               style: TextStyle(
//                                   color: Colors
//                                       .white), // Menambahkan warna putih pada teks
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromARGB(255, 49, 90, 238),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(24),
//                               ),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             child: Text(
//                               'Progress',
//                               style: TextStyle(
//                                   color: Colors
//                                       .black), // Menambahkan warna hitam pada teks
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Color(0xFFD5D5D5),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(24),
//                               ),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             child: Text(
//                               'Complete',
//                               style: TextStyle(
//                                   color: Colors
//                                       .black), // Menambahkan warna hitam pada teks
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Color(0xFFD5D5D5),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(24),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 31),
//                       CustomSearchBar(),
//                       SizedBox(height: 30),
//                       EventCard(
//                         title: 'Intercom',
//                         subtitle: 'Nasywa Salma',
//                         status: 'Progress',
//                         teamCount: '7/8',
//                         dueDate: 'July 3, 2022',
//                       ),
//                       SizedBox(height: 20),
//                       EventCard(
//                         title: 'Seminar Nasional',
//                         subtitle: 'Nabilah Rahmah',
//                         status: 'Complete',
//                         teamCount: '2/8',
//                         dueDate: 'July 12, 2022',
//                       ),
//                       SizedBox(height: 20),
//                       EventCard(
//                         title: 'JTI Fest',
//                         subtitle: 'Adam Safrila',
//                         status: 'Progress',
//                         teamCount: '5/8',
//                         dueDate: 'July 22, 2022',
//                       ),
//                       SizedBox(height: 20),
//                       EventCard(
//                         title: 'Fun Event',
//                         subtitle: 'Wildan Ramadhan',
//                         status: 'Progress',
//                         teamCount: '6/8',
//                         dueDate: 'July 30, 2022',
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
