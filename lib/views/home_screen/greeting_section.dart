import 'package:flutter/material.dart';
// import '/notifikasi/notifikasi_page.dart';
import 'package:simas_app1/views/notifikasi/notifikasi_page.dart';


class GreetingSection extends StatelessWidget {
  const GreetingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Nasywa Salma',
                style: TextStyle(
                  color: Color(0xFF0D1B34),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              // Navigasi ke halaman NotificationsPage saat ikon ditekan
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
            child:
                Icon(Icons.notifications, color: Color(0xFF0D1B34), size: 25),
          ),
        ],
      ),
    );
  }
}
