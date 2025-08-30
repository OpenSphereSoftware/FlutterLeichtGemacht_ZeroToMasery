import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView'), backgroundColor: Colors.teal),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Statische GridView
          const Text('Statische GridView', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(child: Text('3')),
                ),
                Container(
                  color: Colors.yellow,
                  child: const Center(child: Text('4')),
                ),
                Container(
                  color: Colors.orange,
                  child: const Center(child: Text('5')),
                ),
                Container(
                  color: Colors.purple,
                  child: const Center(child: Text('6')),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          // GridView.builder
          const Text('GridView.builder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              padding: const EdgeInsets.all(16),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.teal[100 + (index * 20)],
                  child: Center(child: Text('${index + 1}')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
