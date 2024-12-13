import 'package:flutter/material.dart';

class ContohStatefulWidget extends StatefulWidget {
  @override
  _ContohStatefulWidgetState createState() => _ContohStatefulWidgetState();
}

class _ContohStatefulWidgetState extends State<ContohStatefulWidget> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Input')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Masukkan Nama'),
              onChanged: (value) {
                setState(() {
                  _name = value; // Update state when input changes
                });
              },
            ),
            const SizedBox(height: 20), // Add spacing
            Text(
              'Nama: $_name',
              style: const TextStyle(fontSize: 20), // Corrected fontSize property
            ),
          ],
        ),
      ),
    );
  }
}
