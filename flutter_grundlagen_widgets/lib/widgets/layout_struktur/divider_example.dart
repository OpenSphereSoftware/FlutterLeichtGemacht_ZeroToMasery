import 'package:flutter/material.dart';

class DividerExample extends StatelessWidget {
  const DividerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Divider'), backgroundColor: Colors.grey),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 80,
              color: Colors.grey[200],
              child: const Center(child: Text('Oberer Bereich')),
            ),

            const Divider(height: 40, thickness: 3, color: Colors.grey),

            Container(
              width: 200,
              height: 80,
              color: Colors.grey[300],
              child: const Center(child: Text('Unterer Bereich')),
            ),

            const SizedBox(height: 30),

            // Horizontale Divider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  color: Colors.grey[400],
                  child: const Center(child: Text('Links')),
                ),
                SizedBox(height: 100, child: const VerticalDivider(width: 20, thickness: 3, color: Colors.grey)),
                Container(
                  width: 80,
                  height: 100,
                  color: Colors.grey[500],
                  child: const Center(child: Text('Rechts')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
