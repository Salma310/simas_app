import 'package:flutter/material.dart';
import 'components/bottom_navigation.dart';
import 'components/header.dart';
import 'find_event/find_event_screen.dart';
import 'package:simas_app1/home_screen/home_screen.dart';
import 'notifikasi/notifikasi_page.dart';
import 'my_event/my_event_screen.dart';
import 'profile/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Atur HomeScreen sebagai halaman awal
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // Daftar halaman yang bisa dinavigasi
  final List<Widget> _pages = [
    HomeScreen(), // Halaman Home
    FindEventScreen(), // Halaman Find Event
    MyEventScreen(), // Halaman Event
    ProfileScreen(), // Profile
    // Tambahkan halaman lain di sini
  ];

  // Fungsi untuk mengubah halaman saat bottom nav di-tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(), // Tambahkan Header di sini
          Expanded(
            child:
                _pages[_selectedIndex], // Tampilkan halaman berdasarkan indeks
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
