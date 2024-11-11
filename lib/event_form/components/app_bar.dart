import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF4894FE),
      elevation: 0,
      title: const Text(
        'Tambah Event',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 9),
          child: Row(
            children: [
              _buildSignalStrength(),
              const SizedBox(width: 7),
              _buildBatteryIcon(),
              const SizedBox(width: 7),
              const Text(
                '11:39',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignalStrength() {
    return Row(
      children: List.generate(
        4,
        (index) => Container(
          width: 4,
          height: 5 + (index * 2),
          margin: const EdgeInsets.only(right: 1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
      ),
    );
  }

  Widget _buildBatteryIcon() {
    return Container(
      width: 26,
      height: 12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}