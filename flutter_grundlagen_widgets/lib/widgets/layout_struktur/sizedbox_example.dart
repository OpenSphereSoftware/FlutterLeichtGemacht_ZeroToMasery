import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.brown[200],
              child: const Center(child: Text('Oben')),
            ),
            
            const SizedBox(height: 50), // Vertikaler Abstand
            
            Container(
              width: 100,
              height: 100,
              color: Colors.brown[400],
              child: const Center(child: Text('Mitte')),
            ),
            
            const SizedBox(height: 50), // Vertikaler Abstand
            
            Container(
              width: 100,
              height: 100,
              color: Colors.brown[600],
              child: const Center(child: Text('Unten')),
            ),
            
            const SizedBox(height: 30),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.brown[300],
                ),
                const SizedBox(width: 30), // Horizontaler Abstand
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.brown[500],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
