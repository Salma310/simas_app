import 'package:flutter/material.dart';

class PICInput extends StatelessWidget {
  const PICInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PIC',
          style: TextStyle(
            color: Color(0xFF181818),
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Be Vietnam Pro',
          ),
        ),
        const SizedBox(height: 23),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Nama',
            hintStyle: const TextStyle(
              color: Color(0xFF3B3B3B),
              fontSize: 14,
              fontFamily: 'Mulish',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFC0C0C0)),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
          ),
        ),
      ],
    );
  }
}