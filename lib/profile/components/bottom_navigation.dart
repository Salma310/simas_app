import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('assets/home_icon.png', false),
          _buildNavItem('assets/search_icon.png', false),
          _buildNavItem('assets/notification_icon.png', false),
          _buildNavItem('assets/profile_icon.png', true, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconPath, bool isActive, [String? label]) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFF0F8FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          if (label != null) ...[
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isActive ? const Color(0xFF63B4FF) : Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Nunito',
              ),
            ),
          ],
        ],
      ),
    );
  }
}