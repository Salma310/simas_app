import 'package:flutter/material.dart';

class AssignmentLetter extends StatelessWidget {
  const AssignmentLetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Surat Tugas',
          style: TextStyle(
            color: Color(0xFF181818),
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Be Vietnam Pro',
          ),
        ),
        const SizedBox(height: 17),
        Center(
          child: Column(
            children: [
              Icon(
                Icons.upload_file,
                size: 38,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 21),
              const Text(
                'Select a file or drag and drop here',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'JPG, PNG or PDF, file size no more than 10MB',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 21),
              ElevatedButton(
                onPressed: () {
                  // File selection logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFBFDFE),
                  foregroundColor: const Color(0xFF0F91D2),
                  side: const BorderSide(color: Color(0xB30F91D2)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                ),
                child: const Text(
                  'SELECT FILE',
                  style: TextStyle(
                    fontSize: 7,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}