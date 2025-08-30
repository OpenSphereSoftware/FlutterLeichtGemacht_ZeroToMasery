import 'package:flutter/material.dart';

/// 🔄 ChangeNotifier Showcase
///
/// Diese Klasse demonstriert das ChangeNotifier Pattern:
/// - Erbt von ChangeNotifier für State Management
/// - notifyListeners() informiert alle Listener über Änderungen
/// - Wird mit Provider in der Widget-Tree verfügbar gemacht
class ThemeService extends ChangeNotifier {
  // State Variable - wird über notifyListeners() aktualisiert
  bool _isDarkModeOn = false;

  // Getter für den aktuellen State
  bool get isDarkModeOn => _isDarkModeOn;

  /// Theme wechseln und alle Listener informieren
  ///
  /// Wichtig: notifyListeners() muss aufgerufen werden,
  /// damit die UI sich neu aufbaut!
  void toggleTheme() {
    _isDarkModeOn = !_isDarkModeOn;

    // 🔑 WICHTIG: Benachrichtigt alle Consumer/Listener
    // über die State-Änderung
    notifyListeners();
  }
}
