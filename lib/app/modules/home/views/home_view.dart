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
          elevation: 8,
          shadowColor: Colors.teal.withOpacity(0.5),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
          ),
        ),
        drawer: const AppDrawer(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.teal[50]!, Colors.white],
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(12.0),
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
        ),
      );
    }
  }

  class EventCard extends StatefulWidget {
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
    State<EventCard> createState() => _EventCardState();
  }

  class _EventCardState extends State<EventCard> {
    bool _isHovered = false;

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            child: Card(
              elevation: _isHovered ? 12.0 : 4.0,
              shadowColor: Colors.teal.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(16.0),
                onTap: () {
                  Get.toNamed(Routes.EVENT_DETAIL);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Image dengan gradient overlay
                    SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                            child: Image.asset(
                              widget.imagePath,
                              width: double.infinity,
                              height: 220,
                              fit: BoxFit.cover,
                              // Error builder untuk menangani jika gambar tidak ada
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: double.infinity,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.teal[100]!, Colors.teal[50]!],
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.image,
                                    size: 80,
                                    color: Colors.teal[200],
                                  ),
                                );
                              },
                            ),
                          ),
                          // Gradient overlay
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 220,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.1),
                                    Colors.black.withOpacity(0.3),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Bagian teks (Judul, tanggal, lokasi)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1a5f5f),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 12.0),
                          // Menggunakan helper widget _InfoRow
                          _InfoRow(icon: Icons.calendar_today, text: widget.date),
                          const SizedBox(height: 8.0),
                          _InfoRow(icon: Icons.location_on, text: widget.location),
                        ],
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

  // WIDGET HELPER:
  // Widget kecil untuk menampilkan baris ikon + teks (Tanggal & Lokasi)
  class _InfoRow extends StatelessWidget {
    final IconData icon;
    final String text;

    // DIPERBAIKI: Menggunakan 'super.key'
    const _InfoRow({required this.icon, required this.text});

    @override
    Widget build(BuildContext context) {
      return Row(
        children: [
          Icon(icon, size: 18, color: Colors.teal[700]),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      );
    }
  }