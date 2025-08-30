import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _switchValue1 = false;
  bool _switchValue2 = true;
  bool _switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch'), backgroundColor: Colors.orange),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Einfache Switches:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Einzelne Switches
            SwitchListTile(
              title: const Text('Benachrichtigungen'),
              subtitle: const Text('Push-Benachrichtigungen aktivieren'),
              value: _switchValue1,
              onChanged: (bool value) {
                setState(() {
                  _switchValue1 = value;
                });
              },
              activeColor: Colors.orange,
            ),

            SwitchListTile(
              title: const Text('Dark Mode'),
              subtitle: const Text('Dunkles Theme aktivieren'),
              value: _switchValue2,
              onChanged: (bool value) {
                setState(() {
                  _switchValue2 = value;
                });
              },
              activeColor: Colors.blue,
            ),

            SwitchListTile(
              title: const Text('Auto-Save'),
              subtitle: const Text('Automatisches Speichern aktivieren'),
              value: _switchValue3,
              onChanged: (bool value) {
                setState(() {
                  _switchValue3 = value;
                });
              },
              activeColor: Colors.green,
            ),

            const SizedBox(height: 30),

            // Custom Switch
            const Text('Custom Switch:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            Row(
              children: [
                const Text('Lautlos Modus: '),
                Switch(
                  value: _switchValue1,
                  onChanged: (bool value) {
                    setState(() {
                      _switchValue1 = value;
                    });
                  },
                  activeColor: Colors.red,
                  activeTrackColor: Colors.red[200],
                  inactiveThumbColor: Colors.grey[400],
                  inactiveTrackColor: Colors.grey[300],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Aktuelle Werte anzeigen
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Aktuelle Werte:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Benachrichtigungen: $_switchValue1'),
                  Text('Dark Mode: $_switchValue2'),
                  Text('Auto-Save: $_switchValue3'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Kommentar über Switch
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💡 Switch Widget:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.orange),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Einfacher Ein/Aus-Schalter\n'
                    '• Ideal für Einstellungen und Toggles\n'
                    '• SwitchListTile: Switch mit Titel und Beschreibung\n'
                    '• Customizable: Farben, Größe, etc.\n'
                    '• Boolean-Wert für Zustand',
                    style: TextStyle(fontSize: 14),
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
