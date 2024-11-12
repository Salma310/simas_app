import 'package:flutter/material.dart';
import 'package:simas_app1/views/profile/components/profile_card.dart';
import 'package:simas_app1/views/profile/components/profile_details.dart';
import 'package:simas_app1/views/profile/components/logout_button.dart';
import 'package:simas_app1/views/profile_update/profile_update_screen.dart';
import 'package:simas_app1/controllers/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController _profileController = ProfileController();
  Map<String, dynamic> userData = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final user = await _profileController
        .fetchUserDetails("2"); // Mengambil data user_id = 4
    setState(() {
      userData = user;
      isLoading = false;
    });
  }

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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProfileUpdate(userData: userData), // Kirim userData
                ),
              );
            },
          ),
        ],
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator()) // Indikator loading
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  ProfileCard(userData: userData), // Data untuk ProfileCard
                  const SizedBox(height: 20),
                  ProfileDetails(
                      userData: userData), // Data untuk ProfileDetails
                  const SizedBox(height: 47),
                  const LogoutButton(),
                ],
              ),
            ),
    );
  }
}
