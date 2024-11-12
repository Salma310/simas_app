import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final Map<String, dynamic> userData;

  const ProfileDetails({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: SingleChildScrollView(
        // Tambahkan SingleChildScrollView untuk menangani overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailItem('Username', userData['username'] ?? 'Unknown',
                const Icon(Icons.person)),
            const SizedBox(height: 45),
            _buildDetailItem('Role ID', userData['role_id'].toString(),
                const Icon(Icons.badge)),
            const SizedBox(height: 45),
            _buildDetailItem('Email', userData['email'] ?? 'Unknown',
                const Icon(Icons.email)),
            const SizedBox(height: 45),
            _buildDetailItem('No Telp', userData['phone'] ?? 'Unknown',
                const Icon(Icons.phone)),
            const SizedBox(height: 45),
            _buildChangePasswordButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String value, Widget icon) {
    return Row(
      children: [
        icon, // Tampilkan icon di sini
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(value),
          ],
        ),
      ],
    );
  }

  Widget _buildChangePasswordButton() {
    return Row(
      children: [
        const Icon(
          Icons.lock, // Menggunakan icon gembok
          size: 30, // Atur ukuran agar sesuai
          color: Colors.black, // Sesuaikan warna ikon jika perlu
        ),
        const SizedBox(width: 23),
        const Text(
          'Ganti Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}
