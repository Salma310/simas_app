import 'package:flutter/material.dart';
import 'package:simas_app1/notifikasi/notifikasi_item.dart'; // Mengimpor file Dart lainnya, di mana halaman tujuan berada

void main() {
  runApp(const MaterialApp(
    title: 'Halaman Notifikasi',
    home: NotificationsPage(),
  ));
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
        leading: const BackButton(),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: [
          _buildSectionHeader('Hari Ini'),
          _buildNotificationItem(
              context,
              'assets/images/picture.jpeg',
              'Farid Angga mengadakan agenda rapat event Seminar Nasional 2024',
              '9:30',
              const NotifikasiItem()),
          _buildNotificationItem(context, 'assets/images/logo-jti.jpg',
              'Admin menambahkan acara baru', '9:15', const NotifikasiItem()),
          _buildNotificationItem(context, 'assets/images/logo-jti.jpg',
              'Admin memperbarui acara 2024', '9:01', const NotifikasiItem()),
          _buildSectionHeader('Kemarin'),
          _buildNotificationItem(
              context,
              'assets/images/logo-jti.jpg',
              'Acara Dialog Dosen Mahasiswa telah selesai',
              '9:01',
              const NotifikasiItem()),
          _buildNotificationItem(
              context,
              'assets/images/picture.jpeg',
              'Farid Angga mengadakan agenda rapat event Seminar Nasional 2024',
              '9:01',
              const NotifikasiItem()),
          _buildSectionHeader('Minggu ini'),
          _buildNotificationItem(
              context,
              'assets/images/picture.jpeg',
              'Farid Angga mengadakan agenda rapat event Seminar Nasional 2024',
              '9:01',
              const NotifikasiItem()),
          _buildNotificationItem(context, 'assets/images/logo-jti.jpg',
              'Acara Talkshow telah selesai', '9:01', const NotifikasiItem()),
          _buildSectionHeader('2 Minggu Lalu'),
          _buildNotificationItem(
              context,
              'assets/images/picture.jpeg',
              'Farid Angga mengadakan agenda rapat event Seminar Nasional 2024',
              '9:01',
              const NotifikasiItem()),
          _buildNotificationItem(
              context,
              'assets/images/logo-jti.jpg',
              'Admin memilih Dani Nasution, S.Tr sebagai PIC kegiatan Play IT',
              '9:01',
              const NotifikasiItem()),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, String imagePath,
      String title, String time, Widget targetPage) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman baru ketika item notifikasi diklik
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(title),
        trailing: Text(time),
      ),
    );
  }
}
