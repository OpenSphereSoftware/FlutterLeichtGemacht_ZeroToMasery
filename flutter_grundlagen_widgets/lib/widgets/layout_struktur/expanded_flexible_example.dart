import 'package:flutter/material.dart';

class ExpandedFlexibleExample extends StatelessWidget {
  const ExpandedFlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded / Flexible'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            
            // Row mit Expanded
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    child: const Center(child: Text('Expanded (flex: 2)')),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: const Center(child: Text('Expanded (flex: 1)')),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            
            // Row mit Flexible
            Row(
              children: [
                Flexible(
                  child: Container(
                    height: 80,
                    color: Colors.green,
                    child: const Center(child: Text('Flexible')),
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow,
                  child: const Center(child: Text('Fixed')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
