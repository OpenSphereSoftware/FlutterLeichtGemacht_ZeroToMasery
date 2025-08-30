import 'package:flutter/material.dart';

import 'app_themes.dart';

class ThemeExample extends StatefulWidget {
  const ThemeExample({super.key});

  @override
  State<ThemeExample> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('🎨 Colors', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 16),

              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildColorCard('Primary', Theme.of(context).colorScheme.primary),
                  _buildColorCard('Secondary', Theme.of(context).colorScheme.secondary),
                  _buildColorCard('Surface', Theme.of(context).colorScheme.surface),
                  _buildColorCard('Error', Theme.of(context).colorScheme.error),
                  _buildColorCard('On Primary', Theme.of(context).colorScheme.onPrimary),
                  _buildColorCard('On Surface', Theme.of(context).colorScheme.onSurface),
                ],
              ),

              const SizedBox(height: 30),

              // TextStyle Section
              Text('📝 TextStyle', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 16),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Headline Large', style: Theme.of(context).textTheme.headlineLarge),
                      const SizedBox(height: 8),
                      Text(
                        'Body Large - Dies ist ein Beispiel für Body Large Text, der das aktuelle Theme verwendet.',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // IconTheme Section
              Text('🔍 IconTheme', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 16),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, size: 48),
                      Icon(Icons.favorite, size: 48),
                      Icon(Icons.thumb_up, size: 48),
                      Icon(Icons.home, size: 48),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ElevatedButton Theme Section
              Text('🔘 ElevatedButton Theme', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
                  ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
                  ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
                ],
              ),

              const SizedBox(height: 30),

              // Card Theme Section
              Text('🃏 Card Theme', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 1', style: Theme.of(context).textTheme.bodyLarge),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 2', style: Theme.of(context).textTheme.bodyLarge),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Theme Erklärung
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '💡 Theme & Styling:',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '• ThemeData definiert das gesamte App-Design\n'
                        '• ColorScheme für konsistente Farben\n'
                        '• TextTheme für einheitliche Text-Styles\n'
                        '• IconTheme für Icon-Darstellung\n'
                        '• ElevatedButtonTheme für Button-Styles\n'
                        '• CardTheme für Karten-Design',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorCard(String label, Color color) {
    return Card(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
