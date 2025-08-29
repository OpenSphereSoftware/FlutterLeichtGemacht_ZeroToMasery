/*
 * DART GRUNDLAGEN KURS - Lektion 8: While-Schleifen
 * =================================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du while-Schleifen verwendest
 * - Den Unterschied zwischen kopf- und fußgesteuerten Schleifen
 * - Wann du while-Schleifen einsetzen solltest
 * - Verschiedene Anwendungsfälle
 * - Best Practices für Schleifen
 */

void main() {
  print("=== WHILE-SCHLEIFEN IN DART ===");
  print("");

  // ========================================
  // 1. EINFACHE WHILE-SCHLEIFEN
  // ========================================
  print("1. EINFACHE WHILE-SCHLEIFEN:");
  print("-------------------------------");

  int counter = 1;
  print("Startwert: " + counter.toString());

  while (counter <= 5) {
    print("Schleifendurchlauf: " + counter.toString());
    counter = counter + 1; // oder counter++
  }

  print("Nach der Schleife: " + counter.toString());

  // ========================================
  // 2. WHILE-SCHLEIFEN MIT BEDINGUNGEN
  // ========================================
  print("");
  print("2. WHILE-SCHLEIFEN MIT BEDINGUNGEN:");
  print("-------------------------------------");

  int zahl = 10;
  print("Startzahl: " + zahl.toString());

  while (zahl > 0) {
    print("Zahl: " + zahl.toString());
    zahl = zahl - 2; // Zahl um 2 verringern
  }

  print("Schleife beendet bei: " + zahl.toString());

  // ========================================
  // 3. WHILE-SCHLEIFEN MIT LISTEN
  // ========================================
  print("");
  print("3. WHILE-SCHLEIFEN MIT LISTEN:");
  print("--------------------------------");

  List<String> namen = ["Anna", "Max", "Lisa", "Tom", "Sarah"];
  int index = 0;

  print("Namen in der Liste:");
  while (index < namen.length) {
    print("Name " + (index + 1).toString() + ": " + namen[index]);
    index = index + 1;
  }

  // ========================================
  // 4. WHILE-SCHLEIFEN MIT BREAK
  // ========================================
  print("");
  print("4. WHILE-SCHLEIFEN MIT BREAK:");
  print("--------------------------------");

  int sucheZahl = 7;
  int aktuelleZahl = 1;

  print("Suche nach der Zahl: " + sucheZahl.toString());

  while (true) {
    if (aktuelleZahl == sucheZahl) {
      print("Zahl " + sucheZahl.toString() + " gefunden!");
      break; // Schleife beenden
    }

    if (aktuelleZahl > 10) {
      print("Zahl nicht gefunden (über 10 gesucht).");
      break;
    }

    print("Prüfe: " + aktuelleZahl.toString());
    aktuelleZahl = aktuelleZahl + 1;
  }

  // ========================================
  // 5. WHILE-SCHLEIFEN MIT CONTINUE
  // ========================================
  print("");
  print("5. WHILE-SCHLEIFEN MIT CONTINUE:");
  print("----------------------------------");

  int zaehler = 1;
  print("Zähle von 1 bis 10, aber überspringe 5:");

  while (zaehler <= 10) {
    if (zaehler == 5) {
      zaehler = zaehler + 1;
      continue; // Zum nächsten Durchlauf springen
    }

    print("Zahl: " + zaehler.toString());
    zaehler = zaehler + 1;
  }

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Countdown
  int countdown = 10;
  print("🚀 COUNTDOWN:");

  while (countdown > 0) {
    print(countdown.toString() + "...");
    countdown = countdown - 1;
  }
  print("Liftoff! 🚀");

  // Passwortversuche
  String richtigesPasswort = "geheim123";
  String eingegebenesPasswort = "falsch";
  int versuche = 0;
  int maxVersuche = 3;

  print("");
  print("🔐 PASSWORTVERSUCHE:");

  while (versuche < maxVersuche) {
    versuche = versuche + 1;
    print("Versuch " + versuche.toString() + " von " + maxVersuche.toString());

    if (eingegebenesPasswort == richtigesPasswort) {
      print("Passwort korrekt! Willkommen!");
      break;
    } else {
      print("Passwort falsch. Versuche es nochmal.");
      if (versuche < maxVersuche) {
        eingegebenesPasswort = "geheim123"; // Für Demo-Zwecke
      }
    }
  }

  if (versuche >= maxVersuche && eingegebenesPasswort != richtigesPasswort) {
    print("Zu viele Versuche. Konto gesperrt.");
  }

  // ========================================
  // 7. UNENDLICHE SCHLEIFEN UND SICHERHEIT
  // ========================================
  print("");
  print("7. UNENDLICHE SCHLEIFEN UND SICHERHEIT:");
  print("----------------------------------------");

  // ⚠️ Vorsicht: Diese Schleife könnte endlos laufen!
  // int gefaehrlicheZahl = 1;
  // while (gefaehrlicheZahl > 0) {
  //   print("Diese Schleife läuft endlos!");
  //   gefaehrlicheZahl = gefaehrlicheZahl + 1;
  // }

  // ✅ Sichere Alternative mit Abbruchbedingung
  int sichereZahl = 1;
  int maxWert = 1000;

  print("Sichere Schleife mit Abbruchbedingung:");
  while (sichereZahl > 0 && sichereZahl < maxWert) {
    if (sichereZahl % 100 == 0) {
      print("Zahl: " + sichereZahl.toString());
    }
    sichereZahl = sichereZahl + 1;
  }

  print("Schleife sicher beendet bei: " + sichereZahl.toString());

  // ========================================
  // 8. BEST PRACTICES
  // ========================================
  print("");
  print("8. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Klare Abbruchbedingung
  int produkt = 1;
  int faktor = 1;

  print("Berechne Fakultät von 5:");
  while (faktor <= 5) {
    produkt = produkt * faktor;
    print("Faktor " + faktor.toString() + ": " + produkt.toString());
    faktor = faktor + 1;
  }

  print("5! = " + produkt.toString());

  // ❌ Schlechte Praxis: Unklare Bedingungen
  // int schlechteZahl = 1;
  // while (schlechteZahl != 10) { // Könnte endlos laufen
  //   schlechteZahl = schlechteZahl + 2; // Überspringt 10
  // }

  // ========================================
  // 9. WHILE VS. FOR SCHLEIFEN
  // ========================================
  print("");
  print("9. WHILE VS. FOR SCHLEIFEN:");
  print("------------------------------");

  // While-Schleife (besser für unbekannte Anzahl von Durchläufen)
  int unbekannteZahl = 1;
  print("While-Schleife für unbekannte Anzahl:");

  while (unbekannteZahl * unbekannteZahl < 50) {
    print(unbekannteZahl.toString() + "² = " + (unbekannteZahl * unbekannteZahl).toString());
    unbekannteZahl = unbekannteZahl + 1;
  }

  // For-Schleife (besser für bekannte Anzahl von Durchläufen)
  print("");
  print("For-Schleife für bekannte Anzahl:");
  for (int i = 1; i <= 5; i = i + 1) {
    print("Durchlauf " + i.toString());
  }

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- While-Schleifen laufen, solange eine Bedingung erfüllt ist");
  print("- Verwende break für vorzeitigen Schleifenabbruch");
  print("- Verwende continue für das Überspringen von Durchläufen");
  print("- Achte auf Abbruchbedingungen, um endlose Schleifen zu vermeiden");
  print("- While ist ideal für unbekannte Anzahl von Durchläufen");
}

/*
 * ÜBUNGEN:
 * Erstelle einen Countdown von 20 bis 0
 * Baue eine Schleife, die alle geraden Zahlen bis 20 ausgibt
 * Implementiere eine Passwortabfrage mit maximal 3 Versuchen
 * Erstelle eine Schleife, die die Summe aller Zahlen von 1 bis 100 berechnet
 */
