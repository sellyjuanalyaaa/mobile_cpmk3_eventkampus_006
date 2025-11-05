import 'package:flutter/material.dart';
import '../../../widgets/app_drawer.dart';

class AgendaView extends StatelessWidget {
  // Menambahkan const constructor
  const AgendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda Minggu Ini'),
        backgroundColor: Colors.teal,
        elevation: 8,
        shadowColor: Colors.teal.withOpacity(0.5),
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
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: const [
            _AgendaItem(
              day: 'Senin',
              title: 'Kuliah Umum',
              time: '09:00',
              location: 'Aula',
              icon: Icons.school_rounded,
              color: Colors.blue,
            ),
            _AgendaItem(
              day: 'Rabu',
              title: 'Workshop Flutter',
              time: '13:00',
              location: 'Lab FTI',
              icon: Icons.code_rounded,
              color: Colors.purple,
            ),
            _AgendaItem(
              day: 'Jumat',
              title: 'Rapat BEM',
              time: '16:00',
              location: 'Sekretariat BEM',
              icon: Icons.group_rounded,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class _AgendaItem extends StatelessWidget {
  final String day;
  final String title;
  final String time;
  final String location;
  final IconData icon;
  final Color color;

  const _AgendaItem({
    Key? key,
    required this.day,
    required this.title,
    required this.time,
    required this.location,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          leading: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color.withOpacity(0.7), color],
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1a5f5f),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time_rounded, size: 14, color: Colors.teal),
                    const SizedBox(width: 4),
                    Text(
                      '$time WIB',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.location_on_rounded, size: 14, color: Colors.teal),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          trailing: Chip(
            label: Text(
              day,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.teal,
            side: BorderSide.none,
          ),
        ),
      ),
    );
  }
}