import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simas_app1/controllers/event_controller.dart';
import 'package:simas_app1/views/home_screen/greeting_section.dart';
import 'package:simas_app1/views/home_screen/user_card.dart';
import 'package:simas_app1/views/home_screen/task_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventController = Provider.of<EventController>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            // Panggil fungsi fetchEvents untuk memuat ulang data
            await eventController.fetchEvents();
          },
          child: SingleChildScrollView(
            physics:
                const AlwaysScrollableScrollPhysics(), // Pastikan dapat di-scroll untuk refresh
            child: Column(
              children: [
                GreetingSection(),
                UserCard(),
                FutureBuilder(
                  future: eventController.fetchEvents(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'Error fetching events',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    } else if (eventController.events.isEmpty) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'No events found. Pull to refresh.',
                          ),
                        ),
                      );
                    } else {
                      return TaskList(events: eventController.events);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// // import 'package:simas_app1/home_screen/top_bar.dart';
// import 'package:simas_app1/views/home_screen/greeting_section.dart';
// import 'package:simas_app1/views/home_screen/user_card.dart';
// import 'package:simas_app1/views/home_screen/task_list.dart';
// // import 'package:simas_app1/home_screen/bottom_navigation.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // TopBar(),
//               GreetingSection(),
//               UserCard(),
//               TaskList()
//               // BottomNavigation(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
