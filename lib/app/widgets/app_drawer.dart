import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.teal[800]!, Colors.teal],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.event,
                  color: Colors.white,
                  size: 48,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Event Kampus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Kelola Acara Anda',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          _DrawerMenuTile(
            icon: Icons.home_rounded,
            title: 'Home (Daftar Event)',
            onTap: () {
              Get.back();
              Get.toNamed(Routes.HOME);
            },
          ),
          _DrawerMenuTile(
            icon: Icons.calendar_today_rounded,
            title: 'Agenda Minggu Ini',
            onTap: () {
              Get.back();
              Get.toNamed(Routes.AGENDA);
            },
          ),
          _DrawerMenuTile(
            icon: Icons.contact_mail_rounded,
            title: 'Panitia & Kontak',
            onTap: () {
              Get.back();
              Get.toNamed(Routes.KONTAK);
            },
          ),
          _DrawerMenuTile(
            icon: Icons.info_rounded,
            title: 'Tentang Aplikasi',
            onTap: () {
              Get.back();
              Get.toNamed(Routes.TENTANG);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _DrawerMenuTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          leading: Icon(icon, color: Colors.teal[700], size: 24),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          onTap: onTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hoverColor: Colors.teal[100],
          selectedTileColor: Colors.teal[50],
        ),
      ),
    );
  }
}