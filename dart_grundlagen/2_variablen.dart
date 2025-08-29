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
  // 1. EXPLIZITE TYPENDEKLARATION
  // ========================================
  print("1. EXPLIZITE TYPENDEKLARATION:");
  print("-------------------------------");

  // Initialisierung: Deklaration + erste Zuweisung in einem Schritt
  int alter = 32;
  double groesse = 1.75;
  String name = "Max Mustermann";
  bool istStudent = true;

  print("Alter: " + alter.toString() + " Jahre");
  print("Größe: " + groesse.toString() + " m");
  print("Name: " + name);
  print("Ist Student: " + istStudent.toString());

  // ========================================
  // 2. SPÄTE INITIALISIERUNG (late)
  // ========================================
  print("");
  print("2. SPÄTE INITIALISIERUNG (late):");
  print("----------------------------------");

  // Deklaration ohne Initialisierung
  late int alter2;
  late String beruf;

  // Spätere Zuweisung
  alter2 = 28;
  beruf = "Entwickler";

  print("Alter 2: " + alter2.toString() + " Jahre");
  print("Beruf: " + beruf);

  // ========================================
  // 3. VARIABLENWERTE ÄNDERN
  // ========================================
  print("");
  print("3. VARIABLENWERTE ÄNDERN:");
  print("----------------------------");

  int counter = 0;
  print("Ursprünglicher Wert: " + counter.toString());

  counter = 1;
  print("Nach Änderung: " + counter.toString());

  counter = counter + 1; // Erhöhung um 1
  print("Nach Erhöhung: " + counter.toString());

  counter += 1; // Kurzschreibweise für counter = counter + 1
  print("Nach += 1: " + counter.toString());

  // ========================================
  // 4. KONSTANTEN (final und const)
  // ========================================
  print("");
  print("4. KONSTANTEN (final und const):");
  print("----------------------------------");

  // final: Wird zur Laufzeit gesetzt, kann nicht mehr geändert werden
  final String geburtsort = "Berlin";
  print("Geburtsort: " + geburtsort);

  // const: Wird zur Kompilierzeit gesetzt, muss unveränderlich sein
  const double pi = 3.14159;
  print("Pi: " + pi.toString());

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("--------------------------");

  // Benutzerprofil
  String benutzername = "dart_meister";
  int anzahlKurse = 5;
  double durchschnittsnote = 4.8;
  bool hatZertifikat = true;

  print("Benutzername: @" + benutzername);
  print("Anzahl belegter Kurse: " + anzahlKurse.toString());
  print("Durchschnittsnote: " + durchschnittsnote.toString());
  print("Hat Zertifikat: " + (hatZertifikat ? "Ja" : "Nein"));

  // Berechnung
  int stundenProTag = 2;
  int tageProWoche = 5;
  int wochen = 8;

  int gesamtStunden = stundenProTag * tageProWoche * wochen;
  print("");
  print("Kursplanung:");
  print(
    stundenProTag.toString() +
        " Stunden/Tag × " +
        tageProWoche.toString() +
        " Tage/Woche × " +
        wochen.toString() +
        " Wochen = " +
        gesamtStunden.toString() +
        " Stunden",
  );

  // ========================================
  // 6. BEST PRACTICES
  // ========================================
  print("");
  print("6. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Variablennamen (beschreibend)
  String vorname = "Anna";
  String nachname = "Schmidt";
  int jahrGeburt = 1995;

  // ❌ Schlechte Variablennamen (nicht beschreibend)
  String v = "Anna";
  String n = "Schmidt";
  int j = 1995;

  print("Gute Namen: " + vorname + " " + nachname + ", geboren " + jahrGeburt.toString());
  print("Schlechte Namen: " + v + " " + n + ", geboren " + j.toString());

  print("");
  print("🎯 Zusammenfassung:");
  print("- Variablen speichern Daten");
  print("- Deklariere den Typ explizit für bessere Lesbarkeit");
  print("- Verwende beschreibende Namen");
  print("- final für Laufzeit-Konstanten, const für Kompilierzeit-Konstanten");
}

/*
 * ÜBUNGEN:
 * Erstelle Variablen für deine persönlichen Daten
 * Erstelle eine Einkaufsliste mit verschiedenen Datentypen
 * Experimentiere mit final und const
 */
