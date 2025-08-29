/*
 * DART GRUNDLAGEN KURS - Lektion 18: Async/Await/Future
 * =====================================================
 * 
 * In dieser Lektion lernst du:
 * - Was asynchrone Programmierung ist
 * - Wie du Future verwendest
 * - Wie du async/await verwendest
 * - Wann du es brauchst
 */

void main() {
  print("=== ASYNC/AWAIT/FUTURE IN DART ===");
  print("");

  // ========================================
  // 1. WAS IST ASYNCHRONE PROGRAMMIERUNG?
  // ========================================
  print("1. WAS IST ASYNCHRONE PROGRAMMIERUNG?");
  print("--------------------------------------");

  print("Asynchron bedeutet: Etwas passiert 'nebenbei'");
  print("Dein Programm wartet nicht, sondern macht weiter.");
  print("");

  // ========================================
  // 2. EINFACHE ASYNCHRONE FUNKTION
  // ========================================
  print("2. EINFACHE ASYNCHRONE FUNKTION:");
  print("----------------------------------");

  // Asynchrone Funktion aufrufen
  print("Ich rufe eine asynchrone Funktion auf:");
  begruessungAsync();
  print("Das passiert sofort!");

  // ========================================
  // 3. MIT AWAIT WARTEN
  // ========================================
  print("");
  print("3. MIT AWAIT WARTEN:");
  print("----------------------");

  // Mit await warten
  print("Ich warte auf die Begrüßung:");
  warteAufBegruessung();

  // ========================================
  // 4. FUTURE VERWENDEN
  // ========================================
  print("");
  print("4. FUTURE VERWENDEN:");
  print("----------------------");

  // Future verwenden
  print("Ich hole eine Nachricht:");
  holeNachricht().then((nachricht) {
    print("Nachricht erhalten: " + nachricht);
  });

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Simuliere Daten laden
  print("📱 Daten werden geladen...");
  ladeDaten().then((daten) {
    print("Daten geladen: " + daten);
  });

  // Simuliere Benutzer eingeben
  print("");
  print("⌨️  Benutzer gibt etwas ein...");
  holeBenutzerEingabe().then((eingabe) {
    print("Benutzer hat eingegeben: " + eingabe);
  });

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Asynchrone Funktionen laufen 'nebenbei'");
  print("- async macht eine Funktion asynchron");
  print("- await wartet auf das Ergebnis");
  print("- Future ist ein 'Versprechen' auf ein Ergebnis");
}

// ========================================
// ASYNCHRONE FUNKTIONEN
// ========================================

// Einfache asynchrone Funktion
Future<void> begruessungAsync() async {
  // Simuliere Wartezeit
  await Future.delayed(Duration(seconds: 2));
  print("Hallo aus der Zukunft! (nach 2 Sekunden)");
}

// Mit await warten
Future<void> warteAufBegruessung() async {
  print("Ich warte...");
  await begruessungAsync();
  print("Endlich fertig!");
}

// Future mit Rückgabewert
Future<String> holeNachricht() async {
  // Simuliere Wartezeit
  await Future.delayed(Duration(seconds: 1));
  return "Das ist eine asynchrone Nachricht!";
}

// Daten laden simulieren
Future<String> ladeDaten() async {
  print("  Lade Daten...");
  await Future.delayed(Duration(seconds: 3));
  return "Benutzerdaten, Einstellungen, Nachrichten";
}

// Benutzereingabe simulieren
Future<String> holeBenutzerEingabe() async {
  print("  Warte auf Eingabe...");
  await Future.delayed(Duration(seconds: 2));
  return "Hallo Welt!";
}

/*
 * ÜBUNGEN:
 * Erstelle eine asynchrone Funktion, die deinen Namen nach 3 Sekunden ausgibt
 * Erstelle eine Funktion, die eine Zahl nach einer Wartezeit zurückgibt
 * Erstelle eine Funktion, die zwei asynchrone Operationen nacheinander ausführt
 */
