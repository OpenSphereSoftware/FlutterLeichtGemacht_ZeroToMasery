/*
 * DART GRUNDLAGEN KURS - Lektion 2: Variablen
 * ============================================
 * 
 * In dieser Lektion lernst du:
 * - Was Variablen sind und wofür sie verwendet werden
 * - Verschiedene Arten der Variablendeklaration
 * - Den Unterschied zwischen Deklaration und Initialisierung
 * - Best Practices für Variablennamen
 */

void main() {
  print("=== VARIABLEN IN DART ===");
  print("");

  // ========================================
  // 1. WAS SIND VARIABLEN?
  // ========================================
  print("1. WAS SIND VARIABLEN?");
  print("------------------------");
  print("Variablen sind wie Schubladen, in denen wir Daten speichern können.");
  print("Jede Schublade hat einen Namen und kann einen Wert enthalten.");
  print("");

  // ========================================
  // 2. EINFACHE VARIABLENDEKLARATION
  // ========================================
  print("2. EINFACHE VARIABLENDEKLARATION:");
  print("-----------------------------------");

  // Eine Variable erstellen und einen Wert zuweisen
  String name = "Max Mustermann";
  int alter = 32;
  double groesse = 1.75;
  bool istStudent = true;

  print("Name: " + name);
  print("Alter: " + alter.toString() + " Jahre");
  print("Größe: " + groesse.toString() + " Meter");
  print("Ist Student: " + istStudent.toString());

  // ========================================
  // 3. VARIABLENWERTE ÄNDERN
  // ========================================
  print("");
  print("3. VARIABLENWERTE ÄNDERN:");
  print("----------------------------");

  int counter = 0;
  print("Ursprünglicher Wert: " + counter.toString());

  // Wert ändern
  counter = 5;
  print("Nach Änderung: " + counter.toString());

  // Nochmal ändern
  counter = 10;
  print("Nach erneuter Änderung: " + counter.toString());

  // ========================================
  // 4. SPÄTE INITIALISIERUNG (late)
  // ========================================
  print("");
  print("4. SPÄTE INITIALISIERUNG (late):");
  print("----------------------------------");

  // Variable erstellen, aber noch keinen Wert zuweisen
  late String beruf;
  late int jahresgehalt;

  // Später einen Wert zuweisen
  beruf = "Programmierer";
  jahresgehalt = 50000;

  print("Beruf: " + beruf);
  print("Jahresgehalt: " + jahresgehalt.toString() + " Euro");

  // ========================================
  // 5. KONSTANTEN (final und const)
  // ========================================
  print("");
  print("5. KONSTANTEN (final und const):");
  print("----------------------------------");

  // final: Einmal gesetzt, kann nicht mehr geändert werden
  final String geburtsort = "Berlin";
  print("Geburtsort: " + geburtsort);

  // const: Wird zur Kompilierzeit gesetzt
  const double pi = 3.14159;
  print("Pi: " + pi.toString());

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("--------------------------");

  // Einfaches Benutzerprofil
  String vorname = "Anna";
  String nachname = "Schmidt";
  int geburtsjahr = 1995;
  String stadt = "Hamburg";
  bool hatFuehrerschein = true;

  print("Benutzerprofil:");
  print("Vorname: " + vorname);
  print("Nachname: " + nachname);
  print("Geburtsjahr: " + geburtsjahr.toString());
  print("Stadt: " + stadt);
  print("Hat Führerschein: " + (hatFuehrerschein ? "Ja" : "Nein"));

  // ========================================
  // 7. BEST PRACTICES FÜR VARIABLENNAMEN
  // ========================================
  print("");
  print("7. BEST PRACTICES FÜR VARIABLENNAMEN:");
  print("---------------------------------------");

  // ✅ Gute Variablennamen (beschreibend und verständlich)
  String benutzername = "dart_anfaenger";
  int anzahlKurse = 3;
  double durchschnittsnote = 4.5;

  // ❌ Schlechte Variablennamen (nicht beschreibend)
  String b = "dart_anfaenger";
  int a = 3;
  double d = 4.5;

  print("Gute Namen:");
  print("- benutzername: " + benutzername);
  print("- anzahlKurse: " + anzahlKurse.toString());
  print("- durchschnittsnote: " + durchschnittsnote.toString());

  print("");
  print("Schlechte Namen:");
  print("- b: " + b);
  print("- a: " + a.toString());
  print("- d: " + d.toString());

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Variablen sind Schubladen für Daten");
  print("- Verwende beschreibende Namen");
  print("- final für unveränderliche Werte");
  print("- const für Kompilierzeit-Konstanten");
}

/*
 * ÜBUNGEN:
 * Erstelle Variablen für deine persönlichen Daten
 * Erstelle eine Einkaufsliste mit verschiedenen Datentypen
 * Experimentiere mit final und const
 */
