import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container mit Padding
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.indigo[100],
              child: const Text('Mit Padding'),
            ),
            const SizedBox(height: 20),
            
            // Container mit Margin
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.indigo[200],
              child: const Text('Mit Margin'),
            ),
            const SizedBox(height: 20),
            
            // Container mit Decoration
            Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Mit Decoration',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
