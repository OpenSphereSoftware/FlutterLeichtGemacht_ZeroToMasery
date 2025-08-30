import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Stack mit überlagerten Widgets
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepOrange[200],
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.deepOrange[400],
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange[600],
                  child: const Center(
                    child: Text(
                      'Stack',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Überlagerte Widgets'),
          ],
        ),
      ),
    );
  }
}
