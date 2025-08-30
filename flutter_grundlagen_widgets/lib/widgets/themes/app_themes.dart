import 'package:flutter/material.dart';

class AppThemes {
  // Light Theme
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.light),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue, foregroundColor: Colors.white, elevation: 4),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
    ),
    iconTheme: const IconThemeData(color: Colors.blue, size: 24),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    cardTheme: CardThemeData(elevation: 4, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );

  // Dark Theme - Optimiert für bessere Lesbarkeit
  static ThemeData get darkTheme => ThemeData.dark().copyWith(
    // WICHTIG: ColorScheme explizit definieren für bessere Text-Sichtbarkeit
    colorScheme: const ColorScheme.dark(
      primary: Colors.purple,
      secondary: Colors.purpleAccent,
      surface: Color(0xFF2D2D2D),
      onSurface: Colors.white, // WICHTIG: Text-Farbe auf Hintergrund
    ),
    // WICHTIG: Alle Text-Farben explizit überschreiben
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Weißer Text für Überschriften
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Weißer Text für mittlere Überschriften
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Weißer Text für kleine Überschriften
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Colors.white, // Weißer Text für Body
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white70, // Heller Text für Body Medium
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: Colors.white60, // Heller Text für Body Small
      ),
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Weißer Text für Display
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Weißer Text für Display Medium
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Weißer Text für Display Small
      ),
    ),
    // AppBar explizit definieren
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.purple.shade700,
      foregroundColor: Colors.white,
      elevation: 4,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    // Andere UI-Elemente
    primaryColor: Colors.purple.shade300,
    scaffoldBackgroundColor: const Color(0xFF1E1E1E),
    cardColor: const Color(0xFF2D2D2D),
    iconTheme: const IconThemeData(
      color: Colors.purple, // Lila Icons
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple.shade600, // Helleres Lila für Buttons
        foregroundColor: Colors.white, // Weißer Text auf Buttons
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 4,
      color: const Color(0xFF2D2D2D), // Helleres Grau für Karten
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.white24, // Hellerer Divider
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF2D2D2D), // Helleres Grau für Input-Felder
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.purple.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.purple.shade300, width: 2),
      ),
    ),
  );
}
