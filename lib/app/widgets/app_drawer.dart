// lib/app/widgets/app_drawer.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Text(
              'Menu Event Kampus',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home (Daftar Event)'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.HOME); // Navigasi ke Home
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_view_week),
            title: Text('Agenda Minggu Ini'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.AGENDA); // Navigasi ke Agenda
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Panitia & Kontak'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.KONTAK); // Navigasi ke Kontak
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Tentang Aplikasi'),
            onTap: () {
              Get.back(); // Tutup drawer
              Get.toNamed(Routes.TENTANG); // Navigasi ke Tentang
            },
          ),
        ],
      ),
    );
  }
}
