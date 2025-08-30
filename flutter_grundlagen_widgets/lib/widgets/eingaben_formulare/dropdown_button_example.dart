import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String _selectedValue1 = 'option1';
  String? _selectedValue2;
  String _selectedValue3 = 'option1';

  final List<String> _options = ['option1', 'option2', 'option3', 'option4', 'option5'];

  final Map<String, String> _optionLabels = {
    'option1': 'Option 1',
    'option2': 'Option 2',
    'option3': 'Option 3',
    'option4': 'Option 4',
    'option5': 'Option 5',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropdownButton'), backgroundColor: Colors.indigo),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Einfacher DropdownButton:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Einfacher DropdownButton
            DropdownButton<String>(
              value: _selectedValue1,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue1 = newValue!;
                });
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(_optionLabels[value]!));
              }).toList(),
            ),

            const SizedBox(height: 30),

            const Text(
              'DropdownButton mit Custom Styling:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // DropdownButton mit Custom Styling
            DropdownButton<String>(
              value: _selectedValue2,
              hint: const Text('Bitte wählen...'),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue2 = newValue;
                });
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green, size: 16),
                      const SizedBox(width: 8),
                      Text(_optionLabels[value]!),
                    ],
                  ),
                );
              }).toList(),
              underline: Container(height: 2, color: Colors.indigo),
              icon: const Icon(Icons.arrow_drop_down, color: Colors.indigo),
              dropdownColor: Colors.white,
              elevation: 8,
            ),

            const SizedBox(height: 30),

            const Text('DropdownButtonFormField:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // DropdownButtonFormField
            DropdownButtonFormField<String>(
              value: _selectedValue3,
              decoration: const InputDecoration(
                labelText: 'Auswahl *',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.list),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue3 = newValue!;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bitte wähle eine Option aus';
                }
                return null;
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(_optionLabels[value]!));
              }).toList(),
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
                  Text('Dropdown 1: ${_optionLabels[_selectedValue1]}'),
                  Text('Dropdown 2: ${_selectedValue2 != null ? _optionLabels[_selectedValue2] : 'Nicht ausgewählt'}'),
                  Text('Dropdown 3: ${_optionLabels[_selectedValue3]}'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Kommentar über DropdownButton
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.indigo),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💡 DropdownButton Widget:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.indigo),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Auswahl-Liste für vordefinierte Optionen\n'
                    '• value: Aktuell ausgewählter Wert\n'
                    '• onChanged: Callback bei Änderung\n'
                    '• items: Liste der verfügbaren Optionen\n'
                    '• DropdownButtonFormField: Mit Form-Validierung',
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
