import 'package:flutter/material.dart';
// import 'package:simas_app1/my_event/components/status_bar.dart';
import 'package:simas_app1/my_event/components/header.dart';
import 'package:simas_app1/my_event/components/empty_state.dart';
import 'package:simas_app1/event_form/event_form_screen.dart';

class MyEventScreen extends StatelessWidget {
  const MyEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // const StatusBar(),
            const Header(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 130),
                      const EmptyState(),
                      const SizedBox(height: 138),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            // Aksi ketika tombol plus ditekan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EventFormScreen(), // Ganti dengan halaman UpdateProfile
                              ),
                            );
                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xFF4894FE),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add, // Ikon plus
                              color: Colors.white, // Warna ikon plus
                              size: 30, // Ukuran ikon plus
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: SafeArea(
  //       child: Column(
  //         children: [
  //           // const StatusBar(),
  //           const Header(),
  //           Expanded(
  //             child: SingleChildScrollView(
  //               child: Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 28.0),
  //                 child: Column(
  //                   children: [
  //                     const SizedBox(height: 130),
  //                     const EmptyState(),
  //                     const SizedBox(height: 138),
  //                     Align(
  //                       alignment: Alignment.bottomRight,
  //                       child: Container(
  //                         width: 60,
  //                         height: 60,
  //                         decoration: const BoxDecoration(
  //                           color: Color(0xFF4894FE),
  //                           shape: BoxShape.circle,
  //                         ),
  //                         child: const Icon(
  //                           Icons.add, // Ikon plus
  //                           color: Colors.white, // Warna ikon plus
  //                           size: 30, // Ukuran ikon plus
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
