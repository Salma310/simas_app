import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 21),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('https://cdn.builder.io/api/v1/image/assets/TEMP/8b064a289eca44798a450d29fec3aea07d4c279f5b253b87c8ac33dbe75a7738?placeholderIfAbsent=true&apiKey=4efd590af14340948f22b09b0e3adb18'),
          _buildNavItem('https://cdn.builder.io/api/v1/image/assets/TEMP/808a3511d122577f088f09eec000eaf51e79b163ddaa285334ab0b2a78995f8c?placeholderIfAbsent=true&apiKey=4efd590af14340948f22b09b0e3adb18'),
          _buildActiveNavItem('https://cdn.builder.io/api/v1/image/assets/TEMP/54fa1cc6d6719cdd061818e4f114a2387b06675f1d1eae5c39320b4edbdde023?placeholderIfAbsent=true&apiKey=4efd590af14340948f22b09b0e3adb18', 'My Event'),
          _buildNavItem('https://cdn.builder.io/api/v1/image/assets/TEMP/d83440f892ee2d18fa51ca7c767b35d642d8f8214bbda970546fc174ac3b54fb?placeholderIfAbsent=true&apiKey=4efd590af14340948f22b09b0e3adb18'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconUrl) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Image.network(
          iconUrl,
          width: 24,
          height: 24,
        ),
      ),
    );
  }

  Widget _buildActiveNavItem(String iconUrl, String label) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      decoration: BoxDecoration(
        color: const Color(0x1A63B4FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.network(
            iconUrl,
            width: 23,
            height: 20,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF63B4FF),
              fontSize: 12,
              fontWeight: FontWeight.w700,
              fontFamily: 'Nunito',
            ),
          ),
        ],
      ),
    );
  }
}