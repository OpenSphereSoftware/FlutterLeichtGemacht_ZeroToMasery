import 'dart:isolate';

/*
 * DART GRUNDLAGEN KURS - Lektion 20: Isolates
 * ===========================================
 * 
 * In dieser Lektion lernst du:
 * - Was Isolates sind
 * - Wie du Isolates verwendest
 * - Wann du Isolates brauchst
 * - Wie du Daten zwischen Isolates austauschst
 */

void main() {
  print("=== ISOLATES IN DART ===");
  print("");

  // ========================================
  // 1. WAS SIND ISOLATES?
  // ========================================
  print("1. WAS SIND ISOLATES?");
  print("-----------------------");

  print("Ein Isolate ist wie ein separater Arbeiter.");
  print("Er arbeitet parallel zu deinem Hauptprogramm.");
  print("");

  // ========================================
  // 2. EINFACHEN ISOLATE VERWENDEN
  // ========================================
  print("2. EINFACHEN ISOLATE VERWENDEN:");
  print("----------------------------------");

  // Isolate starten
  print("Ich starte einen Isolate:");
  starteIsolate();

  // ========================================
  // 3. ISOLATE MIT DATENAUSTAUSCH
  // ========================================
  print("");
  print("3. ISOLATE MIT DATENAUSTAUSCH:");
  print("--------------------------------");

  // Daten an Isolate senden
  print("Ich sende Daten an einen Isolate:");
  sendeDatenAnIsolate();

  // ========================================
  // 4. ISOLATE FÜR BERECHNUNGEN
  // ========================================
  print("");
  print("4. ISOLATE FÜR BERECHNUNGEN:");
  print("-------------------------------");

  // Schwere Berechnung im Isolate
  print("Ich starte eine schwere Berechnung:");
  starteBerechnung();

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Mehrere Isolates parallel
  print("🚀 Mehrere Isolates parallel:");
  starteMehrereIsolates();

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Isolates arbeiten parallel zu deinem Hauptprogramm");
  print("- Du kannst Daten an Isolates senden und von ihnen empfangen");
  print("- Isolates sind gut für schwere Berechnungen");
  print("- Jeder Isolate hat seinen eigenen Speicher");
}

// ========================================
// ISOLATE-FUNKTIONEN
// ========================================

// Einfacher Isolate
void starteIsolate() {
  print("  Starte Isolate...");

  // Isolate starten
  Isolate.spawn((message) {
    print("    Isolate sagt: " + message);
  }, "Hallo vom Isolate!");

  print("  Isolate gestartet!");
}

// Daten an Isolate senden
void sendeDatenAnIsolate() {
  print("  Sende Daten...");

  // Isolate mit Daten starten
  Isolate.spawn((daten) {
    List<int> zahlen = daten;
    int summe = 0;

    for (int zahl in zahlen) {
      summe = summe + zahl;
    }

    print("    Isolate berechnet Summe: " + summe.toString());
  }, [1, 2, 3, 4, 5]);

  print("  Daten gesendet!");
}

// Schwere Berechnung im Isolate
void starteBerechnung() {
  print("  Starte Berechnung...");

  // Isolate für Berechnung
  Isolate.spawn((daten) {
    int zahl = daten;
    int ergebnis = 1;

    // Fakultät berechnen (simuliert schwere Arbeit)
    for (int i = 1; i <= zahl; i++) {
      ergebnis = ergebnis * i;
      // Kurz warten um Arbeit zu simulieren
      Future.delayed(Duration(milliseconds: 100));
    }

    print("    Isolate berechnet " + zahl.toString() + "! = " + ergebnis.toString());
  }, 5);

  print("  Berechnung gestartet!");
}

// Mehrere Isolates parallel
void starteMehrereIsolates() {
  print("  Starte mehrere Isolates...");

  // Erster Isolate
  Isolate.spawn((message) {
    print("    Isolate 1: " + message);
  }, "Ich arbeite parallel!");

  // Zweiter Isolate
  Isolate.spawn((message) {
    print("    Isolate 2: " + message);
  }, "Ich auch!");

  // Dritter Isolate
  Isolate.spawn((message) {
    print("    Isolate 3: " + message);
  }, "Und ich auch!");

  print("  Alle Isolates gestartet!");
}

/*
 * ÜBUNGEN:
 * Erstelle einen Isolate, der deinen Namen ausgibt
 * Erstelle einen Isolate, der eine Liste von Zahlen verarbeitet
 * Erstelle mehrere Isolates, die parallel arbeiten
 */
