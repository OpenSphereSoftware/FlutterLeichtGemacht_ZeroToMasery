import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar'),
        backgroundColor: Colors.indigo,
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.pink,
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.favorite), text: 'Favoriten'),
            Tab(icon: Icon(Icons.settings), text: 'Einstellungen'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Erster Tab
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red[200],
              child: const Center(
                child: Text(
                  'Home Tab',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          // Zweiter Tab
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue[200],
              child: const Center(
                child: Text(
                  'Favoriten Tab',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          // Dritter Tab
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green[200],
              child: const Center(
                child: Text(
                  'Einstellungen Tab',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
