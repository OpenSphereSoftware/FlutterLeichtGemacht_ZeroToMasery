import 'package:flutter/material.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar'), backgroundColor: Colors.deepOrange),
      body: Center(child: _buildBody()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Suche'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoriten'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return Container(
          width: 200,
          height: 200,
          color: Colors.red[200],
          child: const Center(
            child: Text('Home', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        );
      case 1:
        return Container(
          width: 200,
          height: 200,
          color: Colors.blue[200],
          child: const Center(
            child: Text('Suche', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        );
      case 2:
        return Container(
          width: 200,
          height: 200,
          color: Colors.green[200],
          child: const Center(
            child: Text('Favoriten', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        );
      case 3:
        return Container(
          width: 200,
          height: 200,
          color: Colors.purple[200],
          child: const Center(
            child: Text('Profil', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        );
      default:
        return const Text('Unbekannter Tab');
    }
  }
}
