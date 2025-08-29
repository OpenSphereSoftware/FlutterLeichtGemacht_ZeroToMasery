/*
 * DART GRUNDLAGEN KURS - Lektion 7: Switch-Case
 * =============================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du switch-case-Statements verwendest
 * - Den Unterschied zwischen switch-case und if-else
 * - Wann du switch-case einsetzen solltest
 * - Verschiedene Anwendungsfälle
 * - Best Practices für switch-case
 */

void main() {
  print("=== SWITCH-CASE IN DART ===");
  print("");

  // ========================================
  // 1. EINFACHE SWITCH-CASE
  // ========================================
  print("1. EINFACHE SWITCH-CASE:");
  print("---------------------------");

  String name = "Hans";
  print("Name: " + name);

  switch (name) {
    case "Peter":
      print("Ich bin Peter");
      break;
    case "Hans":
      print("Ich bin Hans");
      break;
    case "Anna":
      print("Ich bin Anna");
      break;
    default:
      print("Ich kenne diesen Namen nicht");
  }

  // ========================================
  // 2. SWITCH-CASE MIT ZAHLEN
  // ========================================
  print("");
  print("2. SWITCH-CASE MIT ZAHLEN:");
  print("-----------------------------");

  int wochentag = 3;
  print("Wochentag (1-7): " + wochentag.toString());

  switch (wochentag) {
    case 1:
      print("Montag - der Start in eine neue Woche!");
      break;
    case 2:
      print("Dienstag - noch viel zu tun diese Woche.");
      break;
    case 3:
      print("Mittwoch - die Woche ist zur Hälfte geschafft!");
      break;
    case 4:
      print("Donnerstag - fast geschafft!");
      break;
    case 5:
      print("Freitag - Wochenende steht bevor!");
      break;
    case 6:
      print("Samstag - endlich Wochenende!");
      break;
    case 7:
      print("Sonntag - der letzte Tag des Wochenendes.");
      break;
    default:
      print("Ungültiger Wochentag! Verwende 1-7.");
  }

  // ========================================
  // 3. SWITCH-CASE MIT ENUM-ÄHNLICHEN WERTEN
  // ========================================
  print("");
  print("3. SWITCH-CASE MIT ENUM-ÄHNLICHEN WERTEN:");
  print("-------------------------------------------");

  String farbe = "Rot";
  print("Farbe: " + farbe);

  switch (farbe.toLowerCase()) {
    case "rot":
      print("Rot steht für Liebe und Energie.");
      break;
    case "blau":
      print("Blau steht für Ruhe und Vertrauen.");
      break;
    case "grün":
      print("Grün steht für Natur und Hoffnung.");
      break;
    case "gelb":
      print("Gelb steht für Sonne und Freude.");
      break;
    case "lila":
      print("Lila steht für Luxus und Kreativität.");
      break;
    case "orange":
      print("Orange steht für Wärme und Enthusiasmus.");
      break;
    default:
      print("Diese Farbe kenne ich nicht.");
  }

  // ========================================
  // 4. SWITCH-CASE OHNE BREAK (FALL-THROUGH)
  // ========================================
  print("");
  print("4. SWITCH-CASE OHNE BREAK (FALL-THROUGH):");
  print("-------------------------------------------");

  int monat = 2;
  print("Monat: " + monat.toString());

  switch (monat) {
    case 12:
    case 1:
    case 2:
      print("Winter - es ist kalt!");
      break;
    case 3:
    case 4:
    case 5:
      print("Frühling - alles blüht!");
      break;
    case 6:
    case 7:
    case 8:
      print("Sommer - Zeit für Eis und Schwimmen!");
      break;
    case 9:
    case 10:
    case 11:
      print("Herbst - die Blätter fallen!");
      break;
    default:
      print("Ungültiger Monat!");
  }

  // ========================================
  // 5. SWITCH-CASE MIT BEREICHEN
  // ========================================
  print("");
  print("5. SWITCH-CASE MIT BEREICHEN:");
  print("--------------------------------");

  int alter = 25;
  print("Alter: " + alter.toString() + " Jahre");

  // Da Dart keine Bereiche in switch-case unterstützt,
  // verwenden wir if-else für Altersbereiche
  if (alter < 13) {
    print("Du bist ein Kind.");
  } else if (alter < 20) {
    print("Du bist ein Teenager.");
  } else if (alter < 30) {
    print("Du bist jung und erwachsen.");
  } else if (alter < 50) {
    print("Du bist in den besten Jahren.");
  } else if (alter < 65) {
    print("Du bist reif und erfahren.");
  } else {
    print("Du bist ein Senior.");
  }

  // ========================================
  // 6. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("6. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Menüauswahl
  String auswahl = "B";
  print("🍽️  MENÜAUSWAHL:");
  print("Auswahl: " + auswahl);

  switch (auswahl.toUpperCase()) {
    case "A":
      print("Du hast Pizza gewählt - eine gute Wahl!");
      break;
    case "B":
      print("Du hast Burger gewählt - lecker und sättigend!");
      break;
    case "C":
      print("Du hast Salat gewählt - gesund und frisch!");
      break;
    case "D":
      print("Du hast Pasta gewählt - italienische Küche!");
      break;
    default:
      print("Bitte wähle eine gültige Option (A, B, C oder D).");
  }

  // Spielerstatus
  String spielerStatus = "online";
  print("");
  print("🎮 SPIELERSTATUS:");
  print("Status: " + spielerStatus);

  switch (spielerStatus.toLowerCase()) {
    case "online":
      print("Spieler ist online und spielbereit.");
      break;
    case "offline":
      print("Spieler ist offline.");
      break;
    case "away":
      print("Spieler ist abwesend.");
      break;
    case "busy":
      print("Spieler ist beschäftigt.");
      break;
    case "in_game":
      print("Spieler spielt gerade.");
      break;
    default:
      print("Unbekannter Spielerstatus.");
  }

  // ========================================
  // 7. SWITCH-CASE VS. IF-ELSE
  // ========================================
  print("");
  print("7. SWITCH-CASE VS. IF-ELSE:");
  print("------------------------------");

  String tier = "Hund";
  print("Tier: " + tier);

  // Mit switch-case (besser für exakte Vergleiche)
  print("Mit switch-case:");
  switch (tier) {
    case "Hund":
      print("Ein Hund ist ein treuer Begleiter.");
      break;
    case "Katze":
      print("Eine Katze ist unabhängig und elegant.");
      break;
    case "Vogel":
      print("Ein Vogel kann fliegen und singen.");
      break;
    default:
      print("Ich kenne dieses Tier nicht.");
  }

  // Mit if-else (besser für Bereiche und komplexe Bedingungen)
  print("");
  print("Mit if-else:");
  if (tier == "Hund") {
    print("Ein Hund ist ein treuer Begleiter.");
  } else if (tier == "Katze") {
    print("Eine Katze ist unabhängig und elegant.");
  } else if (tier == "Vogel") {
    print("Ein Vogel kann fliegen und singen.");
  } else {
    print("Ich kenne dieses Tier nicht.");
  }

  // ========================================
  // 8. BEST PRACTICES
  // ========================================
  print("");
  print("8. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Switch-case für exakte Vergleiche
  String richtung = "Norden";
  print("Richtung: " + richtung);

  switch (richtung) {
    case "Norden":
      print("Du gehst nach Norden.");
      break;
    case "Süden":
      print("Du gehst nach Süden.");
      break;
    case "Osten":
      print("Du gehst nach Osten.");
      break;
    case "Westen":
      print("Du gehst nach Westen.");
      break;
    default:
      print("Ungültige Richtung!");
  }

  // ❌ Schlechte Praxis: Switch-case für Bereiche
  // switch (alter) {
  //   case 0: case 1: case 2: // Nicht empfehlenswert
  //     print("Kleinkind");
  //     break;
  // }

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Switch-case ist ideal für exakte Vergleiche");
  print("- Verwende break nach jedem case (außer bei Fall-through)");
  print("- Default-Fall für unbekannte Werte");
  print("- Switch-case vs. if-else: Wähle das passende Werkzeug");
  print("- Fall-through für mehrere Werte mit gleicher Aktion");
}

/*
 * ÜBUNGEN:
 * Erstelle ein Programm, das verschiedene Wochentage mit switch-case behandelt
 * Implementiere eine Spielerstatus-Verwaltung
 */
