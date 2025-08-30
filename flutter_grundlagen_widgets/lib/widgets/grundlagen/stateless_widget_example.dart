import 'package:flutter/material.dart';

class StatelessWidgetExample extends StatelessWidget {
  const StatelessWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessWidget'), backgroundColor: Colors.orange),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Was ist ein StatelessWidget?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // Einfache Erklärung
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('📝 Definition:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    'Ein StatelessWidget ist ein Widget, das sich NICHT ändert. '
                    'Es bleibt immer gleich, egal was passiert.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Beispiele
            const Text('Beispiele:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            _buildExample('Text', 'Zeigt immer den gleichen Text an'),
            _buildExample('Icon', 'Zeigt immer das gleiche Icon an'),
            _buildExample('Button', 'Hat immer das gleiche Aussehen'),

            const SizedBox(height: 20),

            // Code Beispiel
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('💻 Code Beispiel:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 16),
                  Text(
                    'class MeineWidget extends StatelessWidget {\n'
                    '  @override\n'
                    '  Widget build(BuildContext context) {\n'
                    '    return Text("Hallo Welt!");\n'
                    '  }\n'
                    '}',
                    style: TextStyle(fontFamily: 'monospace', fontSize: 14, backgroundColor: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Wann verwenden?
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('✅ Wann verwenden?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 8),
                  Text(
                    '• Wenn sich der Inhalt nie ändert\n'
                    '• Für statische UI-Elemente\n'
                    '• Wenn keine Benutzerinteraktion den Inhalt verändert',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExample(String name, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.orange, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(description, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
