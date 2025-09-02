/*
 * DART GRUNDLAGEN KURS - Lektion 3: Datentypen
 * =============================================
 * 
 * In dieser Lektion lernst du:
 * - Alle grundlegenden Datentypen in Dart
 * - Den Unterschied zwischen den verschiedenen Typen
 * - Wann du welchen Typ verwenden solltest
 * - String-Verkettung und String-Operationen
 */

void main() {
  print("=== DATENTYPEN IN DART ===");
  print("");

  // ========================================
  // 1. INTEGER (int) - GANZE ZAHLEN
  // ========================================
  print("1. INTEGER (int) - GANZE ZAHLEN:");
  print("----------------------------------");

  int alter = 32;
  int jahr = 2024;
  int temperatur = -5;
  int einwohner = 83000000;

  print("Alter: " + alter.toString() + " Jahre");
  print("Jahr: " + jahr.toString());
  print("Temperatur: " + temperatur.toString() + "°C");
  print("Einwohner: " + einwohner.toString());
  print("Verwendung: Alter, Jahre, Anzahl, etc.");

  // ========================================
  // 2. DOUBLE - DEZIMALZAHLEN
  // ========================================
  print("");
  print("2. DOUBLE - DEZIMALZAHLEN:");
  print("----------------------------");

  double groesse = 1.75;
  double gewicht = 68.5;
  double pi = 3.14159;
  double temperaturGenau = -5.7;

  print("Größe: " + groesse.toString() + " Meter");
  print("Gewicht: " + gewicht.toString() + " kg");
  print("Pi: " + pi.toString());
  print("Temperatur genau: " + temperaturGenau.toString() + "°C");
  print("Verwendung: Größe, Gewicht, Preise, etc.");

  // ========================================
  // 3. BOOLEAN (bool) - WAHRHEITSWERTE
  // ========================================
  print("");
  print("3. BOOLEAN (bool) - WAHRHEITSWERTE:");
  print("-------------------------------------");

  bool istStudent = true;
  bool hatAuto = false;
  bool istVolljaehrig = true;
  bool istRegnerisch = false;

  print("Ist Student: " + istStudent.toString());
  print("Hat Auto: " + hatAuto.toString());
  print("Ist volljährig: " + istVolljaehrig.toString());
  print("Ist regnerisch: " + istRegnerisch.toString());
  print("Verwendung: Ja/Nein-Fragen, Zustände, etc.");

  // ========================================
  // 4. STRING - TEXT
  // ========================================
  print("");
  print("4. STRING - TEXT:");
  print("-------------------");

  String vorname = "Max";
  String nachname = "Mustermann";
  String stadt = "Berlin";
  String nachricht = "Hallo Welt!";

  print("Vorname: " + vorname);
  print("Nachname: " + nachname);
  print("Stadt: " + stadt);
  print("Nachricht: " + nachricht);
  print("Verwendung: Namen, Texte, Nachrichten, etc.");

  // ========================================
  // 5. STRING-VERKETTUNG
  // ========================================
  print("");
  print("5. STRING-VERKETTUNG:");
  print("-----------------------");

  // Einfache Verkettung
  String vollerName = vorname + " " + nachname;
  print("Voller Name: " + vollerName);

  // Mit Zahlen
  String beschreibung = "Ich bin " + alter.toString() + " Jahre alt.";
  print("Beschreibung: " + beschreibung);

  // Komplexere Verkettung
  String adresse = vorname + " " + nachname + " wohnt in " + stadt + ".";
  print("Adresse: " + adresse);

  // ========================================
  // 6. MEHRZEILIGE STRINGS
  // ========================================
  print("");
  print("6. MEHRZEILIGE STRINGS:");
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

  // ========================================
  // 7. STRING-OPERATIONEN
  // ========================================
  print("");
  print("7. STRING-OPERATIONEN:");
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
  // 8. TYPEN VERGLEICHEN
  // ========================================
  print("");
  print("8. TYPEN VERGLEICHEN:");
  print("-----------------------");

  // Explizite Typen (empfohlen)
  int alterExplizit = 32;
  double groesseExplizit = 1.75;
  bool istStudentExplizit = true;
  String nameExplizit = "Max";

  print("Explizite Typen (empfohlen):");
  print("Alter: " + alterExplizit.toString() + " (Typ: " + alterExplizit.runtimeType.toString() + ")");
  print("Größe: " + groesseExplizit.toString() + " (Typ: " + groesseExplizit.runtimeType.toString() + ")");
  print("Ist Student: " + istStudentExplizit.toString() + " (Typ: " + istStudentExplizit.runtimeType.toString() + ")");
  print("Name: " + nameExplizit + " (Typ: " + nameExplizit.runtimeType.toString() + ")");

  // Automatische Typen (var)
  print("");
  print("Automatische Typen (var):");
  var alterVar = 32;
  var groesseVar = 1.75;
  var istStudentVar = true;
  var nameVar = "Max";

  print("Alter: " + alterVar.toString() + " (Typ: " + alterVar.runtimeType.toString() + ")");
  print("Größe: " + groesseVar.toString() + " (Typ: " + groesseVar.runtimeType.toString() + ")");
  print("Ist Student: " + istStudentVar.toString() + " (Typ: " + istStudentVar.runtimeType.toString() + ")");
  print("Name: " + nameVar + " (Typ: " + nameVar.runtimeType.toString() + ")");

  // ========================================
  // 9. VAR VS. DYNAMIC - DER UNTERSCHIED
  // ========================================
  print("");
  print("9. VAR VS. DYNAMIC - DER UNTERSCHIED:");
  print("---------------------------------------");

  // var: Typ wird automatisch erkannt und ist dann fest
  print("VAR - Typ wird automatisch erkannt und ist dann fest:");
  var zahlVar = 42;
  print("zahlVar: " + zahlVar.toString() + " (Typ: " + zahlVar.runtimeType.toString() + ")");

  // Das geht NICHT: zahlVar = "Jetzt bin ich ein String"; // Fehler!
  print("Der Typ kann NICHT geändert werden!");

  // dynamic: Typ kann zur Laufzeit geändert werden
  print("");
  print("DYNAMIC - Typ kann zur Laufzeit geändert werden:");
  dynamic variable = 42;
  print("Variable: " + variable.toString() + " (Typ: " + variable.runtimeType.toString() + ")");

  variable = "Jetzt bin ich ein String!";
  print("Variable: " + variable + " (Typ: " + variable.runtimeType.toString() + ")");

  variable = true;
  print("Variable: " + variable.toString() + " (Typ: " + variable.runtimeType.toString() + ")");

  variable = 3.14;
  print("Variable: " + variable.toString() + " (Typ: " + variable.runtimeType.toString() + ")");

  // ========================================
  // 10. WANN VERWENDET MAN WAS?
  // ========================================
  print("");
  print("10. WANN VERWENDET MAN WAS?");
  print("-----------------------------");

  print("✅ EXPLIZITE TYPEN (int, double, bool, String):");
  print("- Immer verwenden wenn möglich");
  print("- Bessere Lesbarkeit und Fehlererkennung");
  print("- Beispiel: int alter = 25;");

  print("");
  print("✅ VAR:");
  print("- Wenn der Typ offensichtlich ist");
  print("- Typ wird automatisch erkannt und ist dann fest");
  print("- Beispiel: var name = \"Max\"; // wird zu String");

  print("");
  print("⚠️  DYNAMIC:");
  print("- Nur in speziellen Fällen verwenden");
  print("- Typ kann zur Laufzeit geändert werden");
  print("- Weniger sicher, da Fehler erst zur Laufzeit erkannt werden");
  print("- Beispiel: dynamic variable = 42;");

  // ========================================
  // 11. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("11. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Benutzerprofil
  String benutzername = "dart_anfaenger";
  int anzahlKurse = 3;
  double durchschnittsnote = 4.5;
  bool istPremium = false;

  print("📱 BENUTZERPROFIL:");
  print("Benutzername: @" + benutzername);
  print("Kurse belegt: " + anzahlKurse.toString());
  print("Durchschnittsnote: " + durchschnittsnote.toString());
  print("Premium-Mitglied: " + (istPremium ? "✅ Ja" : "❌ Nein"));

  // Wetterbericht
  String ort = "München";
  int tag = 15;
  String monat = "Januar";
  double temperaturTag = -2.5;
  bool schneit = true;

  print("");
  print("🌤️  WETTERBERICHT:");
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
  print(wetterbericht);

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- int: Ganze Zahlen (Alter, Jahre, Anzahl)");
  print("- double: Dezimalzahlen (Größe, Gewicht, Preise)");
  print("- bool: Wahrheitswerte (Ja/Nein, Zustände)");
  print("- String: Text (Namen, Nachrichten, Beschreibungen)");
  print("- var: Typ wird automatisch erkannt und ist dann fest");
  print("- dynamic: Typ kann zur Laufzeit geändert werden");
  print("- Verwende explizite Typen für bessere Lesbarkeit");
  print("- String-Verkettung mit + funktioniert gut");
}

/*
 * ÜBUNGEN:
 * Erstelle ein vollständiges Benutzerprofil mit allen Datentypen
 * Experimentiere mit verschiedenen String-Operationen
 * Vergleiche die verschiedenen Typisierungsarten
 */
