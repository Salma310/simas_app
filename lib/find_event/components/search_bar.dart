import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        color: Color(0xFF4894FE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for event...',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
          prefixIcon: Icon(Icons.search, color: Colors.white),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}