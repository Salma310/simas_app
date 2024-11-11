import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex; // Menyimpan indeks halaman yang aktif
  final Function(int) onItemTapped; // Fungsi yang dipanggil saat item di-tap

  const BottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home',
              isActive: currentIndex == 0, index: 0),
          _buildNavItem(Icons.search, 'Find Event',
              isActive: currentIndex == 1, index: 1),
          _buildNavItem(Icons.library_add_check_rounded, 'My Event',
              isActive: currentIndex == 2, index: 2),
          _buildNavItem(Icons.person, 'Profile',
              isActive: currentIndex == 3, index: 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label,
      {required bool isActive, required int index}) {
    return GestureDetector(
      onTap: () => onItemTapped(index), // Panggil fungsi saat di-tap
      child: Container(
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
      ),
    );
  }
}
