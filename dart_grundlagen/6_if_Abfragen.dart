/*
 * DART GRUNDLAGEN KURS - Lektion 6: If-Abfragen
 * =============================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du bedingte Ausführungen mit if-Statements erstellst
 * - Den Unterschied zwischen if, else if und else
 * - Verschiedene Vergleichsoperatoren
 * - Logische Operatoren (UND, ODER, NICHT)
 * - Praktische Anwendungen von Bedingungen
 */

void main() {
  print("=== IF-ABFRAGEN IN DART ===");
  print("");

  // ========================================
  // 1. EINFACHE IF-ABFRAGEN
  // ========================================
  print("1. EINFACHE IF-ABFRAGEN:");
  print("---------------------------");

  int alter = 16;
  print("Alter: " + alter.toString() + " Jahre");

  if (alter >= 18) {
    print("Du darfst in den Film.");
  } else {
    print("Du darfst nicht in den Film.");
  }

  // ========================================
  // 2. IF-ELSE IF-ELSE KONSTRUKTE
  // ========================================
  print("");
  print("2. IF-ELSE IF-ELSE KONSTRUKTE:");
  print("--------------------------------");

  int filmAlter = 16;
  print("Film-Alter: " + filmAlter.toString() + " Jahre");

  if (filmAlter >= 18) {
    print("Du darfst in den Film.");
  } else if (filmAlter == 17) {
    print("Du darfst gerade noch in den Film.");
  } else if (filmAlter >= 12) {
    print("Du darfst in den Film mit Begleitung.");
  } else {
    print("Du darfst nicht in den Film.");
  }

  // ========================================
  // 3. VERGLEICHSOPERATOREN
  // ========================================
  print("");
  print("3. VERGLEICHSOPERATOREN:");
  print("--------------------------");

  int zahl1 = 10;
  int zahl2 = 5;

  print("Zahl 1: " + zahl1.toString());
  print("Zahl 2: " + zahl2.toString());

  if (zahl1 > zahl2) {
    print("Zahl 1 ist größer als Zahl 2");
  }

  if (zahl1 >= zahl2) {
    print("Zahl 1 ist größer oder gleich Zahl 2");
  }

  if (zahl1 == zahl2) {
    print("Zahl 1 ist gleich Zahl 2");
  } else {
    print("Zahl 1 ist nicht gleich Zahl 2");
  }

  if (zahl1 != zahl2) {
    print("Zahl 1 ist ungleich Zahl 2");
  }

  // ========================================
  // 4. LOGISCHE OPERATOREN
  // ========================================
  print("");
  print("4. LOGISCHE OPERATOREN:");
  print("-------------------------");

  bool istStudent = true;
  bool hatStudentenausweis = true;
  bool istVolljaehrig = false;

  print("Ist Student: " + istStudent.toString());
  print("Hat Studentenausweis: " + hatStudentenausweis.toString());
  print("Ist volljährig: " + istVolljaehrig.toString());

  // UND-Operator (&&)
  if (istStudent && hatStudentenausweis) {
    print("Du kannst den Studentenrabatt nutzen.");
  }

  // ODER-Operator (||)
  if (istStudent || istVolljaehrig) {
    print("Du kannst den Kurs belegen.");
  }

  // NICHT-Operator (!)
  if (!istVolljaehrig) {
    print("Du brauchst die Erlaubnis deiner Eltern.");
  }

  // Kombinierte logische Ausdrücke
  if (istStudent && hatStudentenausweis && !istVolljaehrig) {
    print("Du bist ein minderjähriger Student mit Ausweis.");
  }

  // ========================================
  // 5. VERSCHACHTELTE IF-ABFRAGEN
  // ========================================
  print("");
  print("5. VERSCHACHTELTE IF-ABFRAGEN:");
  print("--------------------------------");

  String wochentag = "Montag";
  bool istWochenende = false;
  bool hatZeit = true;

  print("Wochentag: " + wochentag);
  print("Ist Wochenende: " + istWochenende.toString());
  print("Hat Zeit: " + hatZeit.toString());

  if (istWochenende) {
    if (hatZeit) {
      print("Du kannst ausschlafen und den Tag genießen.");
    } else {
      print("Du hast leider keine Zeit für Entspannung.");
    }
  } else {
    if (wochentag == "Montag") {
      print("Es ist Montag - der Start in eine neue Woche!");
    } else if (wochentag == "Freitag") {
      print("Freitag - fast Wochenende!");
    } else {
      print("Ein normaler Arbeitstag.");
    }
  }

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Wetterbericht
  double temperatur = 22.5;
  bool regnet = false;
  bool windig = true;

  print("🌤️  WETTERBERICHT:");
  print("Temperatur: " + temperatur.toString() + "°C");
  print("Regnet: " + (regnet ? "Ja" : "Nein"));
  print("Windig: " + (windig ? "Ja" : "Nein"));

  if (temperatur > 25) {
    print("Es ist warm - perfekt für ein Eis!");
  } else if (temperatur > 15) {
    print("Angenehme Temperatur für einen Spaziergang.");
  } else if (temperatur > 5) {
    print("Es ist kühl - zieh dich warm an.");
  } else {
    print("Es ist kalt - Handschuhe und Mütze nicht vergessen!");
  }

  if (regnet) {
    print("Regenschirm mitnehmen!");
  } else if (windig) {
    print("Windjacke anziehen!");
  } else {
    print("Perfektes Wetter für draußen!");
  }

  // Notenbewertung
  double note = 2.7;

  print("");
  print("📚 NOTENBEWERTUNG:");
  print("Note: " + note.toString());

  if (note <= 1.0) {
    print("Sehr gut - ausgezeichnete Leistung!");
  } else if (note <= 2.0) {
    print("Gut - überdurchschnittliche Leistung.");
  } else if (note <= 3.0) {
    print("Befriedigend - durchschnittliche Leistung.");
  } else if (note <= 4.0) {
    print("Ausreichend - knapp bestanden.");
  } else {
    print("Nicht bestanden - leider durchgefallen.");
  }

  // ========================================
  // 7. BEST PRACTICES
  // ========================================
  print("");
  print("7. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Klare Bedingungen
  int alter2 = 20;
  bool hatFuehrerschein = true;

  if (alter2 >= 18 && hatFuehrerschein) {
    print("Du darfst alleine Auto fahren.");
  } else if (alter2 >= 16 && hatFuehrerschein) {
    print("Du darfst mit Begleitung fahren.");
  } else {
    print("Du darfst noch nicht Auto fahren.");
  }

  // ❌ Schlechte Praxis: Zu komplexe Bedingungen
  // if (alter2 >= 18 && hatFuehrerschein == true && !(alter2 < 18) && alter2 != 17) {
  //   print("Du darfst fahren.");
  // }

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- if-Statements führen Code nur bei bestimmten Bedingungen aus");
  print("- else if für zusätzliche Bedingungen, else für alle anderen Fälle");
  print("- Vergleichsoperatoren: ==, !=, <, >, <=, >=");
  print("- Logische Operatoren: && (UND), || (ODER), ! (NICHT)");
  print("- Verschachtelte if-Statements für komplexe Logik");
}

/*
 * ÜBUNGEN:
 * Erstelle ein Programm, das dein Alter überprüft und entsprechende Nachrichten ausgibt
 * Implementiere ein Bewertungssystem für verschiedene Noten
 */
