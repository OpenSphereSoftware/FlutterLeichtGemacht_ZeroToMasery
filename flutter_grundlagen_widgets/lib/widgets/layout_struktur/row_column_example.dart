import 'package:flutter/material.dart';

class RowColumnExample extends StatelessWidget {
  const RowColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row Beispiel
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.green[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.yellow),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Column Beispiel
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.green[200],
              child: Column(
                children: [
                  Container(width: 100, height: 30, color: Colors.red),
                  const SizedBox(height: 10),
                  Container(width: 100, height: 30, color: Colors.blue),
                  const SizedBox(height: 10),
                  Container(width: 100, height: 30, color: Colors.yellow),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
