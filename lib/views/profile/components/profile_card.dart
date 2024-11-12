import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final Map<String, dynamic> userData;

  const ProfileCard({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 51),
      decoration: BoxDecoration(
        color: const Color(0xFF4894FE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Gambar profil
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              userData['avatar'] ??
                  'https://via.placeholder.com/48', // Default gambar jika null
            ),
          ),
          const SizedBox(width: 12),
          // Nama pengguna
          Text(
            userData['name'] ?? 'Unknown User',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
