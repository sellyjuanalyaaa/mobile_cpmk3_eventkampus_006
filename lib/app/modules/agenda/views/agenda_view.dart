import 'package:flutter/material.dart';
import '../../../widgets/app_drawer.dart';

class AgendaView extends StatelessWidget {
  // Menambahkan const constructor
  const AgendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Minggu Ini'),
        backgroundColor: Colors.teal, // <-- DIUBAH
      ),
      drawer: AppDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: [
          ListTile(
            leading: Icon(Icons.event, color: Colors.teal), // <-- DIUBAH
            title: Text('Senin: Kuliah Umum'),
            subtitle: Text('09:00 - Aula'),
          ),
          ListTile(
            leading: Icon(Icons.event, color: Colors.teal), // <-- DIUBAH
            title: Text('Rabu: Workshop Flutter'),
            subtitle: Text('13:00 - Lab FTI'),
          ),
          ListTile(
            leading: Icon(Icons.event, color: Colors.teal), // <-- DIUBAH
            title: Text('Jumat: Rapat BEM'),
            subtitle: Text('16:00 - Sekretariat BEM'),
          ),
        ],
      ),
    );
  }
}