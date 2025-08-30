import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text'), backgroundColor: Colors.orange),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Normaler Text', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text(
              'Großer Text',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            const SizedBox(height: 20),
            const Text('Kleiner Text', style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
