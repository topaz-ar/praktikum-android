import 'package:flutter/material.dart';

class ContohStatelessWidget extends StatelessWidget {
  ContohStatelessWidget({super.key});
  final TextEditingController _controllerPesan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controllerPesan,
              decoration: const InputDecoration(
                labelText: 'Masukkan Pesan Anda:',
              ),
            ),
            const SizedBox(height: 20), // Memberikan jarak antara widget
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: _controllerPesan,
              builder: (context, value, child) {
                return Text(
                  'Pesan: ${value.text}',
                  style: const TextStyle(fontSize: 16),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
