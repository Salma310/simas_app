import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 13),
      decoration: const BoxDecoration(
        color: Color(0xFF4894FE),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('HH:mm').format(DateTime.now()),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              letterSpacing: -0.32,
            ),
          ),
          Row(
            children: [
              _buildSignalStrength(),
              const SizedBox(width: 7),
              _buildBatteryStatus(),
            ],
          ),
        ],
      ),
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

  Widget _buildBatteryStatus() {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/wifi_icon.png',
              width: 11,
              height: 4,
            ),
            const SizedBox(height: 2),
            Image.asset(
              'assets/images/cellular_icon.png',
              width: 5,
              height: 3,
            ),
          ],
        ),
        const SizedBox(width: 7),
        Container(
          width: 26,
          height: 12,
          color: Colors.white,
        ),
      ],
    );
  }
}