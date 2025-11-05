import 'package:flutter/material.dart';
import '../../../widgets/app_drawer.dart';

class TentangView extends StatelessWidget {
  // Menambahkan const constructor
  const TentangView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
        backgroundColor: Colors.teal, // <-- DIUBAH
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Logo-UNSOED.png', 
                height: 80, 
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.school, size: 80, color: Colors.teal[800]);
                },
              ),
              SizedBox(height: 16),
              Text(
                'Event Kampus',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Versi 1.0.0',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                'Aplikasi ini dibuat untuk memenuhi tugas Pemrograman Mobile. Dibuat menggunakan Flutter dengan GetX.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}