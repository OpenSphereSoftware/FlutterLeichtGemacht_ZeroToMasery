import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView'), backgroundColor: Colors.deepPurple),
      body: Row(
        children: [
          // Statische ListView
          Expanded(
            child: Column(
              children: [
                const Text('Statische ListView', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        height: 60,
                        color: Colors.red,
                        child: const Center(child: Text('Item 1')),
                      ),
                      Container(
                        height: 60,
                        color: Colors.blue,
                        child: const Center(child: Text('Item 2')),
                      ),
                      Container(
                        height: 60,
                        color: Colors.green,
                        child: const Center(child: Text('Item 3')),
                      ),
                      Container(
                        height: 60,
                        color: Colors.yellow,
                        child: const Center(child: Text('Item 4')),
                      ),
                      Container(
                        height: 60,
                        color: Colors.orange,
                        child: const Center(child: Text('Item 5')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const VerticalDivider(width: 2),

          // ListView.builder
          Expanded(
            child: Column(
              children: [
                const Text('ListView.builder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60,
                        color: Colors.deepPurple[100 + (index * 50)],
                        child: Center(child: Text('Builder Item ${index + 1}')),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
