import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(26, 12, 26, 27),
      decoration: const BoxDecoration(
        color: Color(0xFFE7E7EA),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Event',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              // Image.asset(
              //   'assets/images/settings_icon.png',
              //   width: 25,
              //   height: 25,
              // ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Semua event yang sudah Anda pilih akan ditampilkan di halaman ini.',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}
