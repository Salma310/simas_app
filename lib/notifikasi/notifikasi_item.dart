import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Notifikasi Undangan',
    home: NotifikasiItem(),
  ));
}

class NotifikasiItem extends StatelessWidget {
  const NotifikasiItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Notifikasi"),
        leading: const BackButton(),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 400,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade300, Colors.grey.shade400],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Workshop IOT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Progress',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Adam Safrila', style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Perlu kami sampaikan bahwa anda diundang menjadi '
                    'anggota pada acara Penelitian Dosen tahun 2025\n'
                    '\n'
                    'Salam, \n'
                    'Pimpinan Jurusan 2024/2025',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const SizedBox(height: 15.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Colors.white70),
                          SizedBox(width: 8.0),
                          Text('Kuota', style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                      Text('8 orang', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white70),
                          SizedBox(width: 8.0),
                          Text('Pelaksanaan', style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                      Text('July 24, 2025', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.assignment, color: Colors.white70),
                          SizedBox(width: 8.0),
                          Text('Surat Tugas', style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                      Text('--', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                      ),
                      child: const Text('Info Lebih Lanjut'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}