import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/app_drawer.dart';
import '../../../routes/app_routes.dart'; 

class HomeView extends StatelessWidget {
  // DIPERBAIKI: Menggunakan 'super.key'
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Kampus'),
        backgroundColor: Colors.teal,
      ),
      drawer: AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          // Menggunakan widget Card kustom yang baru
          EventCard(
            title: 'Seminar Nasional AI',
            date: '10 November 2025',
            location: 'Aula Rektorat',
            imagePath: 'assets/images/poster_seminar_ai.jpg',
          ),
          EventCard(
            title: 'Lomba Debat Nasional',
            date: '12-14 November 2025',
            location: 'Gedung FISIP',
            imagePath: 'assets/images/poster_lomba_debat.jpg', 
          ),
          EventCard(
            title: 'Bazar Kewirausahaan',
            date: '15 November 2025',
            location: 'Lapangan Utama',
            imagePath: 'assets/images/poster_bazar.jpg', 
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String location;
  final String imagePath;

  const EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.location,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 4.0,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(

        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Get.toNamed(Routes.EVENT_DETAIL);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Image.asset(
                imagePath,
                height: 180,
                fit: BoxFit.cover,
                // Error builder untuk menangani jika gambar tidak ada
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 180,
                    color: Colors.teal[50],
                    child: Icon(Icons.image, size: 50, color: Colors.teal[200]),
                  );
                },
              ),
            ),
            // Bagian teks (Judul, tanggal, lokasi)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  // Menggunakan helper widget _InfoRow
                  _InfoRow(icon: Icons.calendar_today, text: date),
                  const SizedBox(height: 4.0),
                  _InfoRow(icon: Icons.location_on, text: location),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// WIDGET HELPER:
// Widget kecil untuk menampilkan baris ikon + teks (Tanggal & Lokasi)
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  // DIPERBAIKI: Menggunakan 'super.key'
  const _InfoRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.teal),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
      ],
    );
  }
}