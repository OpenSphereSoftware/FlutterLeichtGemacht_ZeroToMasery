/*
 * DART GRUNDLAGEN KURS - Lektion 9: Do-While-Schleifen
 * ====================================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du do-while-Schleifen verwendest
 * - Den Unterschied zwischen while und do-while
 * - Wann du do-while-Schleifen einsetzen solltest
 * - Verschiedene Anwendungsfälle
 * - Best Practices für do-while-Schleifen
 */

void main() {
  print("=== DO-WHILE-SCHLEIFEN IN DART ===");
  print("");

  // ========================================
  // 1. EINFACHE DO-WHILE-SCHLEIFEN
  // ========================================
  print("1. EINFACHE DO-WHILE-SCHLEIFEN:");
  print("----------------------------------");

  int counter = 1;
  print("Startwert: " + counter.toString());

  do {
    print("Schleifendurchlauf: " + counter.toString());
    counter = counter + 1;
  } while (counter <= 5);

  print("Nach der Schleife: " + counter.toString());

  // ========================================
  // 2. UNTERSCHIED ZWISCHEN WHILE UND DO-WHILE
  // ========================================
  print("");
  print("2. UNTERSCHIED ZWISCHEN WHILE UND DO-WHILE:");
  print("---------------------------------------------");

  int zahl = 10;

  // While-Schleife (kopfgesteuert)
  print("While-Schleife (kopfgesteuert):");
  while (zahl < 5) {
    print("While: " + zahl.toString());
    zahl = zahl + 1;
  }
  print("While-Schleife wurde " + (zahl < 5 ? "ausgeführt" : "nicht ausgeführt"));

  // Do-while-Schleife (fußgesteuert)
  zahl = 10;
  print("");
  print("Do-while-Schleife (fußgesteuert):");
  do {
    print("Do-while: " + zahl.toString());
    zahl = zahl + 1;
  } while (zahl < 5);
  print("Do-while-Schleife wurde mindestens einmal ausgeführt");

  // ========================================
  // 3. DO-WHILE MIT BEDINGUNGEN
  // ========================================
  print("");
  print("3. DO-WHILE MIT BEDINGUNGEN:");
  print("-------------------------------");

  int startZahl = 20;
  print("Startzahl: " + startZahl.toString());

  do {
    print("Verarbeite: " + startZahl.toString());
    startZahl = startZahl - 5;
  } while (startZahl > 0);

  print("Schleife beendet bei: " + startZahl.toString());

  // ========================================
  // 4. DO-WHILE MIT LISTEN
  // ========================================
  print("");
  print("4. DO-WHILE MIT LISTEN:");
  print("-------------------------");

  List<String> tiere = ["Hund", "Katze", "Vogel", "Fisch"];
  int index = 0;

  print("Tiere in der Liste:");
  do {
    print("Tier " + (index + 1).toString() + ": " + tiere[index]);
    index = index + 1;
  } while (index < tiere.length);

  // ========================================
  // 5. DO-WHILE MIT BREAK UND CONTINUE
  // ========================================
  print("");
  print("5. DO-WHILE MIT BREAK UND CONTINUE:");
  print("-------------------------------------");

  int sucheZahl = 3;
  int aktuelleZahl = 1;

  print("Suche nach der Zahl: " + sucheZahl.toString());

  do {
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
  } while (true);

  // Do-while mit continue
  int zaehler = 1;
  print("");
  print("Zähle von 1 bis 10, aber überspringe 5:");

  do {
    if (zaehler == 5) {
      zaehler = zaehler + 1;
      continue; // Zum nächsten Durchlauf springen
    }

    print("Zahl: " + zaehler.toString());
    zaehler = zaehler + 1;
  } while (zaehler <= 10);

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Menüauswahl
  String auswahl = "";
  int versuche = 0;

  print("🍽️  MENÜAUSWAHL:");
  print("Verfügbare Optionen: A, B, C");

  do {
    versuche = versuche + 1;
    print("Versuch " + versuche.toString() + " - Bitte wähle eine Option:");

    // Simuliere Benutzereingabe
    if (versuche == 1) {
      auswahl = "X"; // Ungültige Eingabe
    } else if (versuche == 2) {
      auswahl = "A"; // Gültige Eingabe
    }

    if (auswahl == "A") {
      print("Du hast Pizza gewählt!");
    } else if (auswahl == "B") {
      print("Du hast Burger gewählt!");
    } else if (auswahl == "C") {
      print("Du hast Salat gewählt!");
    } else {
      print("Ungültige Auswahl. Bitte versuche es nochmal.");
    }
  } while ((auswahl != "A" && auswahl != "B" && auswahl != "C") && versuche < 3);

  if (versuche >= 3) {
    print("Zu viele Versuche. Standardauswahl: Pizza");
  }

  // Passwortabfrage
  String passwort = "geheim123";
  String eingegebenesPasswort = "falsch";
  int passwortVersuche = 0;

  print("");
  print("🔐 PASSWORTABFRAGE:");

  do {
    passwortVersuche = passwortVersuche + 1;
    print("Versuch " + passwortVersuche.toString() + " von 3:");

    if (passwortVersuche == 2) {
      eingegebenesPasswort = "geheim123"; // Für Demo-Zwecke
    }

    if (eingegebenesPasswort == passwort) {
      print("Passwort korrekt! Willkommen!");
    } else {
      print("Passwort falsch.");
      if (passwortVersuche < 3) {
        print("Versuche es nochmal.");
      }
    }
  } while (eingegebenesPasswort != passwort && passwortVersuche < 3);

  if (passwortVersuche >= 3 && eingegebenesPasswort != passwort) {
    print("Zu viele Versuche. Konto gesperrt.");
  }

  // ========================================
  // 7. DO-WHILE FÜR VALIDIERUNG
  // ========================================
  print("");
  print("7. DO-WHILE FÜR VALIDIERUNG:");
  print("--------------------------------");

  int alter = 0;
  bool gueltigesAlter = false;

  print("📝 ALTERSVALIDIERUNG:");

  do {
    print("Bitte gib dein Alter ein (1-120):");

    // Simuliere Benutzereingabe
    if (!gueltigesAlter) {
      alter = 150; // Ungueltige Eingabe
    }

    if (alter >= 1 && alter <= 120) {
      gueltigesAlter = true;
      print("Alter " + alter.toString() + " ist gueltig.");
    } else {
      print("Ungueltiges Alter. Bitte gib eine Zahl zwischen 1 und 120 ein.");
      alter = 25; // Für Demo-Zwecke
    }
  } while (!gueltigesAlter);

  // ========================================
  // 8. BEST PRACTICES
  // ========================================
  print("");
  print("8. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Do-while für mindestens einen Durchlauf
  int produkt = 1;
  int faktor = 1;

  print("Berechne Fakultät von 5:");
  do {
    produkt = produkt * faktor;
    print("Faktor " + faktor.toString() + ": " + produkt.toString());
    faktor = faktor + 1;
  } while (faktor <= 5);

  print("5! = " + produkt.toString());

  // ❌ Schlechte Praxis: Do-while wenn while besser wäre
  // int schlechteZahl = 1;
  // do {
  //   print("Schlecht: " + schlechteZahl.toString());
  //   schlechteZahl = schlechteZahl + 1;
  // } while (schlechteZahl <= 5); // while wäre hier besser

  // ========================================
  // 9. WANN DO-WHILE VERWENDEN?
  // ========================================
  print("");
  print("9. WANN DO-WHILE VERWENDEN?");
  print("------------------------------");

  // ✅ Do-while ist ideal für:
  // - Menüauswahl (mindestens eine Auswahl)
  // - Passwortabfrage (mindestens ein Versuch)
  // - Validierung (mindestens eine Prüfung)
  // - Benutzereingaben (mindestens eine Eingabe)

  // ✅ While ist ideal für:
  // - Zählschleifen
  // - Datenverarbeitung
  // - Bedingte Ausführung

  print("🎯 ZUSAMMENFASSUNG:");
  print("- Do-while-Schleifen führen den Code mindestens einmal aus");
  print("- Die Bedingung wird am Ende der Schleife geprüft");
  print("- Ideal für Menüs, Validierung und Benutzereingaben");
  print("- Verwende do-while, wenn mindestens ein Durchlauf nötig ist");
  print("- Verwende while, wenn der Code möglicherweise nie ausgeführt werden soll");
}

/*
 * ÜBUNGEN:
 * Implementiere eine Passwortabfrage mit maximal 3 Versuchen
 * Baue eine Altersvalidierung, die gültige Werte akzeptiert
 * Erstelle ein Programm, das Zahlen addiert, bis der Benutzer 0 eingibt
 */
