import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

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
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/dc6531b35f41672b8530897f2f18705158bfd6533c0cf3cc6465ade3d46cc7b3?apiKey=4efd590af14340948f22b09b0e3adb18&',
            width: 48,
            height: 48,
          ),
          const SizedBox(width: 12),
          const Text(
            'Imran Syahir',
            style: TextStyle(
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
