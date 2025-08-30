import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card'), backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Einfache Card
            Card(
              elevation: 4,
              child: Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(16),
                child: const Center(child: Text('Einfache Card')),
              ),
            ),

            const SizedBox(height: 20),

            // Card mit Farbe
            Card(
              elevation: 8,
              color: Colors.amber[200],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(16),
                child: const Center(child: Text('Card mit Farbe & Form')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
