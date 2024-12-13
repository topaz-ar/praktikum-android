import 'package:flutter/material.dart';

class radiobutton01 extends StatefulWidget {
  @override
  _radiobutton01State createState() => _radiobutton01State();
}

class _radiobutton01State extends State<radiobutton01> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';

  @override
  void dispose() {
    _controller.dispose(); // Membersihkan controller saat widget dihapus
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Mengatur posisi ke kiri
          children: [
            // Input TextField untuk Nama
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Masukkan Nama',
              ),
              onChanged: (value) {
                setState(() {
                  _name = value; // Memperbarui state saat input berubah
                });
              },
            ),
            const SizedBox(height: 20), // Memberikan jarak antar widget
            // Menampilkan nama yang dimasukkan
            Text(
              'Nama: $_name',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
