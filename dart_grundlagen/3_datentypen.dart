/*
 * DART GRUNDLAGEN KURS - Lektion 3: Datentypen
 * =============================================
 * 
 * In dieser Lektion lernst du:
 * - Alle grundlegenden Datentypen in Dart
 * - Den Unterschied zwischen statischer und dynamischer Typisierung
 * - String-Verkettung und String-Operationen
 * - Wann du welchen Typ verwenden solltest
 */

void main() {
  print("=== DATENTYPEN IN DART ===");
  print("");

  // ========================================
  // 1. GRUNDLEGENDE DATENTYPEN
  // ========================================
  print("1. GRUNDLEGENDE DATENTYPEN:");
  print("------------------------------");

  // Integer: Ganze Zahlen (positiv und negativ)
  int alter = 32;
  int jahr = 2024;
  int temperatur = -5;
  int einwohner = 83000000;

  print("Alter: " + alter.toString() + " Jahre");
  print("Jahr: " + jahr.toString());
  print("Temperatur: " + temperatur.toString() + "°C");
  print("Einwohner: " + einwohner.toString());

  // Double: Dezimalzahlen (Fließkommazahlen)
  double groesse = 1.75;
  double gewicht = 68.5;
  double pi = 3.14159;
  double temperaturGenau = -5.7;

  print("");
  print("Größe: " + groesse.toString() + " m");
  print("Gewicht: " + gewicht.toString() + " kg");
  print("Pi: " + pi.toString());
  print("Temperatur genau: " + temperaturGenau.toString() + "°C");

  // Boolean: Wahrheitswerte
  bool istStudent = true;
  bool hatAuto = false;
  bool istVolljaehrig = alter >= 18;

  print("");
  print("Ist Student: " + istStudent.toString());
  print("Hat Auto: " + hatAuto.toString());
  print("Ist volljährig: " + istVolljaehrig.toString());

  // ========================================
  // 2. STRINGS UND TEXTVERARBEITUNG
  // ========================================
  print("");
  print("2. STRINGS UND TEXTVERARBEITUNG:");
  print("----------------------------------");

  // Einfache Strings
  String vorname = "Max";
  String nachname = "Mustermann";
  String stadt = "Berlin";

  print("Vorname: " + vorname);
  print("Nachname: " + nachname);
  print("Stadt: " + stadt);

  // String-Verkettung (Konkatenation)
  String vollerName = vorname + " " + nachname;
  print("Voller Name: " + vollerName);

  // Komplexe String-Verkettung
  int geburtsjahr = 1992;
  int aktuellesAlter = jahr - geburtsjahr;
  String lebenslauf = "Ich bin " + aktuellesAlter.toString() + " Jahre alt und wohne in " + stadt + ".";
  print("Lebenslauf: " + lebenslauf);

  // ========================================
  // 3. MEHRZEILIGE STRINGS
  // ========================================
  print("");
  print("3. MEHRZEILIGE STRINGS:");
  print("--------------------------");

  // Dreifache Anführungszeichen für mehrzeilige Strings
  String gedicht = '''
  Das ist ein Gedicht
  über Dart-Programmierung.
  Es hat mehrere Zeilen
  und ist sehr schön.
  ''';
  print("Gedicht:");
  print(gedicht);

  // Mit String-Verkettung
  String kursInfo =
      """
  Kurs: """ +
      vorname +
      """s Dart-Grundlagen
  Teilnehmer: """ +
      alter.toString() +
      """ Jahre alt
  Standort: """ +
      stadt +
      """
  """;
  print("Kursinfo:");
  print(kursInfo);

  // ========================================
  // 4. STRING-OPERATIONEN
  // ========================================
  print("");
  print("4. STRING-OPERATIONEN:");
  print("------------------------");

  String text = "  Dart ist eine tolle Programmiersprache!  ";

  print("Original: '" + text + "'");
  print("Länge: " + text.length.toString() + " Zeichen");
  print("Großbuchstaben: " + text.toUpperCase());
  print("Kleinbuchstaben: " + text.toLowerCase());
  print("Getrimmt: '" + text.trim() + "'");
  print("Enthält 'Dart': " + text.contains('Dart').toString());
  print("Enthält 'Python': " + text.contains('Python').toString());

  // ========================================
  // 5. STATISCHE VS. DYNAMISCHE TYPISIERUNG
  // ========================================
  print("");
  print("5. STATISCHE VS. DYNAMISCHE TYPISIERUNG:");
  print("------------------------------------------");

  // Statische Typisierung (explizit)
  print("STATISCHE TYPISIERUNG (empfohlen):");
  int alterStatisch = 32;
  double groesseStatisch = 1.75;
  bool istStudentStatisch = true;
  String nameStatisch = "Max";

  print("Alter: " + alterStatisch.toString() + " (Typ: " + alterStatisch.runtimeType.toString() + ")");
  print("Größe: " + groesseStatisch.toString() + " (Typ: " + groesseStatisch.runtimeType.toString() + ")");
  print("Ist Student: " + istStudentStatisch.toString() + " (Typ: " + istStudentStatisch.runtimeType.toString() + ")");
  print("Name: " + nameStatisch + " (Typ: " + nameStatisch.runtimeType.toString() + ")");

  // Automatische Typisierung (var)
  print("");
  print("AUTOMATISCHE TYPISIERUNG (var):");
  var alterVar = 32;
  var groesseVar = 1.75;
  var istStudentVar = true;
  var nameVar = "Max";

  print("Alter: " + alterVar.toString() + " (Typ: " + alterVar.runtimeType.toString() + ")");
  print("Größe: " + groesseVar.toString() + " (Typ: " + groesseVar.runtimeType.toString() + ")");
  print("Ist Student: " + istStudentVar.toString() + " (Typ: " + istStudentVar.runtimeType.toString() + ")");
  print("Name: " + nameVar + " (Typ: " + nameVar.runtimeType.toString() + ")");

  // Dynamische Typisierung (dynamic)
  print("");
  print("DYNAMISCHE TYPISIERUNG (dynamic):");
  dynamic variable = 42;
  print("Variable: " + variable.toString() + " (Typ: " + variable.runtimeType.toString() + ")");

  variable = "Jetzt bin ich ein String!";
  print("Variable: " + variable + " (Typ: " + variable.runtimeType.toString() + ")");

  variable = true;
  print("Variable: " + variable.toString() + " (Typ: " + variable.runtimeType.toString() + ")");

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Benutzerprofil
  String benutzername = "dart_meister";
  int anzahlKurse = 5;
  double durchschnittsnote = 4.8;
  bool istPremium = true;

  String profil =
      """
  📱 BENUTZERPROFIL
  =================
  Benutzername: @""" +
      benutzername +
      """
  Kurse belegt: """ +
      anzahlKurse.toString() +
      """
  Durchschnittsnote: """ +
      durchschnittsnote.toString() +
      """
  Premium-Mitglied: """ +
      (istPremium ? "✅ Ja" : "❌ Nein") +
      """
  """;
  print(profil);

  // Wetterbericht
  String ort = "München";
  int tag = 15;
  String monat = "Januar";
  double temperaturTag = -2.5;
  bool schneit = true;

  String wetterbericht =
      "Am " +
      tag.toString() +
      ". " +
      monat +
      " in " +
      ort +
      ": " +
      temperaturTag.toString() +
      "°C, " +
      (schneit ? "es schneit" : "kein Schnee");
  print("");
  print("🌤️  WETTERBERICHT:");
  print(wetterbericht);

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- int: Ganze Zahlen");
  print("- double: Dezimalzahlen");
  print("- bool: Wahrheitswerte (true/false)");
  print("- String: Text");
  print("- Verwende explizite Typen für bessere Lesbarkeit");
  print("- String-Verkettung mit + funktioniert gut");
}

/*
 * ÜBUNGEN:
 * Erstelle ein vollständiges Benutzerprofil mit allen Datentypen
 * Experimentiere mit verschiedenen String-Operationen
 * Vergleiche die verschiedenen Typisierungsarten
 */
