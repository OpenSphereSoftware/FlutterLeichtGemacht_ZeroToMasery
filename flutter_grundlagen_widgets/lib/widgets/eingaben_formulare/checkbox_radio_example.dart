import 'package:flutter/material.dart';

class CheckboxRadioExample extends StatefulWidget {
  const CheckboxRadioExample({super.key});

  @override
  State<CheckboxRadioExample> createState() => _CheckboxRadioExampleState();
}

class _CheckboxRadioExampleState extends State<CheckboxRadioExample> {
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;
  String _radioValue = 'option1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox & Radio'), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Checkboxen:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Einzelne Checkboxen
            CheckboxListTile(
              title: const Text('Option 1'),
              subtitle: const Text('Beschreibung für Option 1'),
              value: _checkboxValue1,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue1 = value ?? false;
                });
              },
              activeColor: Colors.blue,
            ),

            CheckboxListTile(
              title: const Text('Option 2'),
              subtitle: const Text('Beschreibung für Option 2'),
              value: _checkboxValue2,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue2 = value ?? false;
                });
              },
              activeColor: Colors.green,
            ),

            CheckboxListTile(
              title: const Text('Option 3'),
              subtitle: const Text('Beschreibung für Option 3'),
              value: _checkboxValue3,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue3 = value ?? false;
                });
              },
              activeColor: Colors.orange,
            ),

            const SizedBox(height: 30),

            const Text('Radio Buttons:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Radio Buttons
            RadioListTile<String>(
              title: const Text('Option A'),
              subtitle: const Text('Beschreibung für Option A'),
              value: 'option1',
              groupValue: _radioValue,
              onChanged: (String? value) {
                setState(() {
                  _radioValue = value ?? 'option1';
                });
              },
              activeColor: Colors.blue,
            ),

            RadioListTile<String>(
              title: const Text('Option B'),
              subtitle: const Text('Beschreibung für Option B'),
              value: 'option2',
              groupValue: _radioValue,
              onChanged: (String? value) {
                setState(() {
                  _radioValue = value ?? 'option1';
                });
              },
              activeColor: Colors.blue,
            ),

            RadioListTile<String>(
              title: const Text('Option C'),
              subtitle: const Text('Beschreibung für Option C'),
              value: 'option3',
              groupValue: _radioValue,
              onChanged: (String? value) {
                setState(() {
                  _radioValue = value ?? 'option1';
                });
              },
              activeColor: Colors.blue,
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
                  Text('Checkbox 1: $_checkboxValue1'),
                  Text('Checkbox 2: $_checkboxValue2'),
                  Text('Checkbox 3: $_checkboxValue3'),
                  Text('Radio Value: $_radioValue'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Kommentar über die Unterschiede
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💡 Unterschiede:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Checkbox: Mehrfachauswahl möglich\n'
                    '• Radio: Nur eine Auswahl möglich\n'
                    '• CheckboxListTile: Checkbox mit Titel und Beschreibung\n'
                    '• RadioListTile: Radio mit Titel und Beschreibung\n'
                    '• groupValue: Verknüpft Radio Buttons',
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
