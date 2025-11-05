import 'package:flutter/material.dart';
import '../../../widgets/app_drawer.dart';

class KontakView extends StatelessWidget {
  // Menambahkan const constructor
  const KontakView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panitia & Kontak'),
        backgroundColor: Colors.teal, // <-- DIUBAH
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hubungi kami untuk informasi lebih lanjut:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.person, color: Colors.teal), // <-- DIUBAH
              title: Text('Budi (Ketua Panitia)'),
              subtitle: Text('0812-3456-7890'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.teal), // <-- DIUBAH
              title: Text('Ani (Sekretaris)'),
              subtitle: Text('0898-7654-3210'),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.teal), // <-- DIUBAH
              title: Text('Email Resmi'),
              subtitle: Text('event.kampus@univ.ac.id'),
            ),
          ],
        ),
      ),
    );
  }
}