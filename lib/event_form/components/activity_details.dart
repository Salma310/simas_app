import 'package:flutter/material.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Detail Kegiatan',
          style: TextStyle(
            color: Color(0xFF181818),
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Be Vietnam Pro',
          ),
        ),
        const SizedBox(height: 18),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Nama Kegiatan',
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
              vertical: 19,
            ),
          ),
        ),
        const SizedBox(height: 21),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Tanggal, Bulan, Tahun',
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
              vertical: 17,
            ),
            suffixIcon: const Icon(Icons.calendar_today, size: 19),
          ),
          readOnly: true,
          onTap: () {
            // Show date picker
          },
        ),
      ],
    );
  }
}