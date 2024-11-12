import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', isActive: true),
          _buildNavItem(Icons.search, ''),
          _buildNavItem(Icons.notifications, ''),
          _buildNavItem(Icons.person, ''),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isActive = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: isActive
          ? BoxDecoration(
              color: Color(0x1A63B4FF),
              borderRadius: BorderRadius.circular(12),
            )
          : null,
      child: Row(
        children: [
          Icon(
            icon,
            color: isActive ? Color(0xFF63B4FF) : Colors.grey,
            size: 24,
          ),
          if (isActive) ...[
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: Color(0xFF63B4FF),
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: 'Nunito',
              ),
            ),
          ],
        ],
      ),
    );
  }
}