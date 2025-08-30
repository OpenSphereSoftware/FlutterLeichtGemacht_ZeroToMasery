import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons'), backgroundColor: Colors.teal),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
            const SizedBox(height: 20),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: const Text('OutlinedButton')),
            const SizedBox(height: 20),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite), color: Colors.red),
          ],
        ),
      ),
    );
  }
}
