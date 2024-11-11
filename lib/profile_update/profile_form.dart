import 'package:flutter/material.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const SizedBox(height: 40),
          _buildProfilePicture(),
          const SizedBox(height: 41),
          _buildFormField('Username', 'Username'),
          const SizedBox(height: 25),
          _buildFormField('NIDN', '43527********'),
          const SizedBox(height: 25),
          _buildFormField('Email', 'sistem*****31@gmail.com'),
          const SizedBox(height: 25),
          _buildFormField('No Telp', '08123232323232'),
          const SizedBox(height: 70),
          _buildSaveButton(context), // Pass context to _buildSaveButton
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0D1B34)),
          onPressed: () {
            Navigator.pop(context); // Aksi untuk kembali ke halaman sebelumnya
          },
        ),
        const SizedBox(width: 12),
        const Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0D1B34),
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }

  Widget _buildProfilePicture() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      decoration: BoxDecoration(
        color: const Color(0xFF4894FE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFCBE1FF),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFCBC5C5)),
            ),
            child: const Text(
              'Ganti Foto Profil',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xFFF0F3FF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: const Color(0xFFC6D1DD)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // TODO: Implement save functionality
          Navigator.pop(
              context); // Kembali ke halaman profile setelah menyimpan
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF4894FE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        ),
        child: const Text(
          'Save',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
