import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image'), backgroundColor: Colors.purple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Asset Image
            Image.asset('assets/logo.png', width: 200, height: 200, fit: BoxFit.contain),
            const SizedBox(height: 20),
            const Text('Asset Image (logo.png)'),
            const SizedBox(height: 30),
            Image.network('https://picsum.photos/250?image=9', width: 200, height: 200),
            const Text('Network Image'),
          ],
        ),
      ),
    );
  }
}
