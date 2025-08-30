import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SingleChildScrollView'), backgroundColor: Colors.indigo),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Viele Container um Scroll zu demonstrieren
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[100],
              child: const Center(child: Text('Oberer Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[200],
              child: const Center(child: Text('Zweiter Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[300],
              child: const Center(child: Text('Dritter Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[400],
              child: const Center(child: Text('Vierter Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[500],
              child: const Center(child: Text('Fünfter Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[600],
              child: const Center(child: Text('Sechster Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[700],
              child: const Center(child: Text('Siebter Bereich')),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.indigo[800],
              child: const Center(child: Text('Unterer Bereich')),
            ),
            const SizedBox(height: 20),

            // Kommentar über den Unterschied
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💡 Unterschied zu ListView:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• SingleChildScrollView: Scrollt ein einzelnes Widget\n'
                    '• ListView: Scrollt eine Liste von Widgets\n'
                    '• SingleChildScrollView: Alle Widgets werden auf einmal geladen\n'
                    '• ListView: Nur sichtbare Widgets werden geladen (besser für große Listen)',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
