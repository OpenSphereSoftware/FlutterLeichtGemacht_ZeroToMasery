import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon'), backgroundColor: Colors.yellow),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, size: 100, color: Colors.yellow),
            const SizedBox(height: 20),
            const Icon(Icons.favorite, size: 80, color: Colors.red),
            const SizedBox(height: 20),
            const Icon(Icons.thumb_up, size: 60, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
