import 'package:flutter/material.dart';
// import 'package:simas_app1/profile/components/header.dart';
import 'package:simas_app1/profile/components/profile_card.dart';
import 'package:simas_app1/profile/components/profile_details.dart';
import 'package:simas_app1/profile/components/logout_button.dart';
import 'package:simas_app1/profile_update/profile_update_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.black),
            onPressed: () {
              // Aksi untuk mengarahkan ke halaman Update Profile
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileUpdate()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20), // Spasi di bawah AppBar
            const ProfileCard(), // Komponen ProfileCard
            const SizedBox(height: 20), // Spasi antara card dan detail
            const ProfileDetails(), // Komponen ProfileDetails
            const SizedBox(height: 47),
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}
