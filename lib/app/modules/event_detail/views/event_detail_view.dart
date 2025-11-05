import 'package:flutter/material.dart';

class EventDetailView extends StatelessWidget {
  // Menambahkan const constructor untuk konsistensi
  const EventDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Event'),
        backgroundColor: Colors.teal, // <-- DIUBAH
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder untuk gambar poster
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal[50], // <-- Diubah agar serasi
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.image, size: 100, color: Colors.teal[200]), // <-- Diubah agar serasi
            ),
            SizedBox(height: 16),
            Text(
              'Seminar Nasional AI', // Judul statis
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal[800], // <-- Diubah agar serasi
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Deskripsi Event:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Ini adalah deskripsi statis untuk seminar nasional tentang Kecerdasan Buatan (AI). Acara ini akan membahas perkembangan terbaru di dunia AI dan dampaknya terhadap industri...',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 16),
            Text('Waktu: 09:00 - 16:00 WIB'),
            Text('Lokasi: Aula Gedung Rektorat'),
          ],
        ),
      ),
    );
  }
}