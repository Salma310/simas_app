import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      decoration: BoxDecoration(
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
            '11:39',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            ),
          ),
          Row(
            children: [
              _buildSignalStrength(),
              SizedBox(width: 7),
              _buildBatteryIndicator(),
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
          margin: EdgeInsets.only(right: 1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1),
          ),
        ),
      ),
    );
  }

  Widget _buildBatteryIndicator() {
    return Row(
      children: [
        Icon(Icons.signal_cellular_alt, color: Colors.white, size: 14),
        SizedBox(width: 7),
        Container(
          width: 26,
          height: 12,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ],
    );
  }
}