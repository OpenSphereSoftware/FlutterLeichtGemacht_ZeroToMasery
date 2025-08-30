import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile'), backgroundColor: Colors.lime),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(color: Colors.lime[100], borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.star, color: Colors.amber),
                    title: const Text('Erste Zeile'),
                    subtitle: const Text('Untertitel'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.favorite, color: Colors.red),
                    title: const Text('Zweite Zeile'),
                    subtitle: const Text('Weiterer Untertitel'),
                    trailing: const Icon(Icons.check),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.thumb_up, color: Colors.blue),
                    title: const Text('Dritte Zeile'),
                    subtitle: const Text('Letzter Untertitel'),
                    trailing: const Icon(Icons.more_vert),
                    onTap: () {},
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
