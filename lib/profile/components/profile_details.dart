import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: SingleChildScrollView(
        // Tambahkan SingleChildScrollView untuk menangani overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailItem('Username', '43527********',
                const Icon(Icons.person) // Ganti dengan icon Flutter
                ),
            const SizedBox(height: 50),
            _buildDetailItem('NIDN', '43527********',
                const Icon(Icons.badge) // Ganti dengan icon Flutter
                ),
            const SizedBox(height: 45),
            _buildDetailItem('Email', 'sistem*****31@gmail.com',
                const Icon(Icons.email) // Ganti dengan icon Flutter
                ),
            const SizedBox(height: 45),
            _buildDetailItem('No Telp', '081234335654',
                const Icon(Icons.phone) // Ganti dengan icon Flutter
                ),
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
              style: TextStyle(
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
