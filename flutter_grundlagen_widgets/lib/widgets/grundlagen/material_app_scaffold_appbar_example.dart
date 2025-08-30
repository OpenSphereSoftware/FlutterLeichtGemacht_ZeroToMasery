import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget {
  const MaterialAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material - Scaffold'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text('MaterialApp', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Basis für Material Design Apps'),
          ],
        ),
      ),
    );
  }
}
