import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue1 = 50.0;
  double _sliderValue2 = 0.5;
  RangeValues _rangeValues = const RangeValues(20.0, 80.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider'), backgroundColor: Colors.purple),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Einfacher Slider:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Einfacher Slider
            Slider(
              value: _sliderValue1,
              min: 0.0,
              max: 100.0,
              divisions: 10,
              label: _sliderValue1.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue1 = value;
                });
              },
              activeColor: Colors.purple,
              inactiveColor: Colors.purple[200],
            ),
            Text('Wert: ${_sliderValue1.round()}'),

            const SizedBox(height: 30),

            const Text(
              'Slider mit verschiedenen Eigenschaften:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Slider mit verschiedenen Eigenschaften
            Slider(
              value: _sliderValue2,
              min: 0.0,
              max: 1.0,
              divisions: 20,
              label: _sliderValue2.toStringAsFixed(2),
              onChanged: (double value) {
                setState(() {
                  _sliderValue2 = value;
                });
              },
              activeColor: Colors.blue,
              inactiveColor: Colors.blue[200],
            ),
            Text('Wert: ${_sliderValue2.toStringAsFixed(2)}'),

            const SizedBox(height: 30),

            const Text('Range Slider:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Range Slider
            RangeSlider(
              values: _rangeValues,
              min: 0.0,
              max: 100.0,
              divisions: 10,
              labels: RangeLabels(_rangeValues.start.round().toString(), _rangeValues.end.round().toString()),
              onChanged: (RangeValues values) {
                setState(() {
                  _rangeValues = values;
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.green[200],
            ),
            Text('Bereich: ${_rangeValues.start.round()} - ${_rangeValues.end.round()}'),

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
                  Text('Slider 1: ${_sliderValue1.round()}'),
                  Text('Slider 2: ${_sliderValue2.toStringAsFixed(2)}'),
                  Text('Range: ${_rangeValues.start.round()} - ${_rangeValues.end.round()}'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Kommentar über Slider
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.purple),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '💡 Slider Widget:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.purple),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Wert-Schieber für numerische Eingaben\n'
                    '• min/max: Bereich des Sliders\n'
                    '• divisions: Anzahl der Schritte\n'
                    '• label: Angezeigter Wert\n'
                    '• RangeSlider: Für Wertebereiche',
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
