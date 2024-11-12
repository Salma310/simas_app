import 'package:flutter/material.dart';
import 'package:simas_app1/views/profile/profile_screen.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman profil
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProfileScreen()), // Ganti dengan halaman profil Anda
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF4894FE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/4ea625524249697d1ef3033bc9164558258e01c71becb95650760c319f0a2937?placeholderIfAbsent=true&apiKey=4efd590af14340948f22b09b0e3adb18'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nasywa Salma',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      '3571025707040001',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 24),
          ],
        ),
      ),
    );
  }
}
