import 'dart:async';

/*
 * DART GRUNDLAGEN KURS - Lektion 19: Streams
 * ==========================================
 * 
 * In dieser Lektion lernst du:
 * - Was Streams sind
 * - Wie du Streams verwendest
 * - Wie du auf Daten reagierst
 * - Wann du Streams brauchst
 */

void main() {
  print("=== STREAMS IN DART ===");
  print("");

  // ========================================
  // 1. WAS SIND STREAMS?
  // ========================================
  print("1. WAS SIND STREAMS?");
  print("----------------------");

  print("Ein Stream ist wie ein Fluss von Daten.");
  print("Daten kommen nacheinander an, wie Wasser in einem Fluss.");
  print("");

  // ========================================
  // 2. EINFACHEN STREAM VERWENDEN
  // ========================================
  print("2. EINFACHEN STREAM VERWENDEN:");
  print("--------------------------------");

  // Stream erstellen und verwenden
  print("Ich erstelle einen einfachen Stream:");
  einfacherStream();

  // ========================================
  // 3. STREAM MIT ZAHLEN
  // ========================================
  print("");
  print("3. STREAM MIT ZAHLEN:");
  print("-----------------------");

  // Zahlen-Stream
  print("Ich erstelle einen Zahlen-Stream:");
  zahlenStream();

  // ========================================
  // 4. STREAM MIT FILTERN
  // ========================================
  print("");
  print("4. STREAM MIT FILTERN:");
  print("------------------------");

  // Gefilterter Stream
  print("Ich filtere einen Stream:");
  gefilterterStream();

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Nachrichten-Stream
  print("📱 Nachrichten-Stream:");
  nachrichtenStream();

  // Temperatur-Stream
  print("");
  print("🌡️  Temperatur-Stream:");
  temperaturStream();

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Streams sind Flüsse von Daten");
  print("- Du kannst auf jeden neuen Wert reagieren");
  print("- Streams sind gut für sich ändernde Daten");
  print("- Du kannst Streams filtern und verarbeiten");
}

// ========================================
// STREAM-FUNKTIONEN
// ========================================

// Einfacher Stream
void einfacherStream() {
  // Stream mit Strings erstellen
  Stream<String> namenStream = Stream.fromIterable(["Anna", "Max", "Lisa", "Tom"]);

  // Auf jeden Namen reagieren
  namenStream.listen((name) {
    print("  Neuer Name: " + name);
  });
}

// Zahlen-Stream
void zahlenStream() {
  // Stream mit Zahlen erstellen
  Stream<int> zahlenStream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  // Auf jede Zahl reagieren
  zahlenStream.listen((zahl) {
    print("  Zahl: " + zahl.toString());
  });
}

// Gefilterter Stream
void gefilterterStream() {
  // Stream mit Zahlen erstellen
  Stream<int> alleZahlen = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  // Nur gerade Zahlen filtern
  alleZahlen.where((zahl) => zahl % 2 == 0).listen((zahl) {
    print("  Gerade Zahl: " + zahl.toString());
  });
}

// Nachrichten-Stream
void nachrichtenStream() {
  // Stream mit Nachrichten simulieren
  Stream<String> nachrichten = Stream.periodic(
    Duration(seconds: 1),
    (index) => "Nachricht " + (index + 1).toString(),
  ).take(5); // Nur 5 Nachrichten

  // Auf jede Nachricht reagieren
  nachrichten.listen((nachricht) {
    print("  " + nachricht + " empfangen");
  });
}

// Temperatur-Stream
void temperaturStream() {
  // Stream mit Temperaturen simulieren
  Stream<double> temperaturen = Stream.periodic(
    Duration(seconds: 2),
    (index) => 20.0 + (index * 2.0),
  ).take(4); // Nur 4 Temperaturen

  // Auf jede Temperatur reagieren
  temperaturen.listen((temp) {
    if (temp > 25) {
      print("  " + temp.toString() + "°C - Es ist warm!");
    } else {
      print("  " + temp.toString() + "°C - Es ist angenehm");
    }
  });
}

/*
 * ÜBUNGEN:
 * Erstelle einen Stream, der deinen Namen 3 Mal ausgibt
 * Erstelle einen Stream mit Zahlen und filtere alle durch 3 teilbaren
 * Erstelle einen Stream, der alle 2 Sekunden eine Zufallszahl ausgibt
 */
