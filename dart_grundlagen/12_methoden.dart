/*
 * DART GRUNDLAGEN KURS - Lektion 12: Methoden
 * ===========================================
 * 
 * In dieser Lektion lernst du:
 * - Was Methoden sind und wozu du sie brauchst
 * - Wie du einfache Methoden schreibst
 * - Wie du Methoden aufrufst
 * - Verschiedene Arten von Methoden
 * - Best Practices für Methoden
 */

void main() {
  print("=== METHODEN IN DART ===");
  print("");

  // ========================================
  // 1. WAS SIND METHODEN?
  // ========================================
  print("1. WAS SIND METHODEN?");
  print("-----------------------");

  print("Methoden sind wie kleine Programme innerhalb deines Programms.");
  print("Sie helfen dir, Code zu organisieren und wiederzuverwenden.");
  print("");

  // ========================================
  // 2. EINFACHE METHODEN OHNE PARAMETER
  // ========================================
  print("2. EINFACHE METHODEN OHNE PARAMETER:");
  print("--------------------------------------");

  // Methode aufrufen
  print("Ich rufe jetzt eine Methode auf:");
  begruessung();

  print("");
  print("Ich rufe sie nochmal auf:");
  begruessung();

  // ========================================
  // 3. METHODEN MIT PARAMETERN
  // ========================================
  print("");
  print("3. METHODEN MIT PARAMETERN:");
  print("------------------------------");

  // Methode mit einem Parameter aufrufen
  print("Ich rufe eine Methode mit einem Namen auf:");
  begruessePerson("Anna");

  print("");
  print("Ich rufe sie mit einem anderen Namen auf:");
  begruessePerson("Max");

  // Methode mit zwei Parametern aufrufen
  print("");
  print("Ich rufe eine Methode mit zwei Parametern auf:");
  zeigePerson("Lisa", 25);

  print("");
  print("Ich rufe sie mit anderen Werten auf:");
  zeigePerson("Tom", 30);

  // ========================================
  // 4. METHODEN MIT VERSCHIEDENEN DATENTYPEN
  // ========================================
  print("");
  print("4. METHODEN MIT VERSCHIEDENEN DATENTYPEN:");
  print("-------------------------------------------");

  // Mit Zahlen
  print("Ich rufe eine Methode mit Zahlen auf:");
  zeigeZahlen(10, 20);

  // Mit Strings
  print("");
  print("Ich rufe eine Methode mit Strings auf:");
  verbindeWoerter("Hallo", "Welt");

  // Mit bool
  print("");
  print("Ich rufe eine Methode mit bool auf:");
  zeigeStatus(true);
  zeigeStatus(false);

  // ========================================
  // 5. METHODEN FÜR BERECHNUNGEN
  // ========================================
  print("");
  print("5. METHODEN FÜR BERECHNUNGEN:");
  print("--------------------------------");

  // Einfache Addition
  print("Ich rufe eine Methode für Addition auf:");
  addiereZahlen(15, 25);

  // Multiplikation
  print("");
  print("Ich rufe eine Methode für Multiplikation auf:");
  multipliziereZahlen(4, 7);

  // ========================================
  // 6. METHODEN MIT LISTEN
  // ========================================
  print("");
  print("6. METHODEN MIT LISTEN:");
  print("-------------------------");

  List<String> namen = ["Anna", "Max", "Lisa"];
  List<int> zahlen = [1, 2, 3, 4, 5];

  // Liste ausgeben
  print("Ich rufe eine Methode mit einer Namensliste auf:");
  zeigeNamenListe(namen);

  print("");
  print("Ich rufe eine Methode mit einer Zahlenliste auf:");
  zeigeZahlenListe(zahlen);

  // ========================================
  // 7. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("7. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Wetterbericht
  print("🌤️  WETTERBERICHT:");
  zeigeWetter("Sonnig", 22.5);

  print("");
  zeigeWetter("Regnerisch", 15.0);

  // Einkaufsliste
  print("");
  print("🛒 EINKAUFSLISTE:");
  List<String> einkauf = ["Äpfel", "Milch", "Brot"];
  zeigeEinkaufsliste(einkauf);

  // ========================================
  // 8. BEST PRACTICES
  // ========================================
  print("");
  print("8. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Klare Methodennamen
  print("✅ Gute Praxis: Klare Methodennamen");
  begruesseBenutzer("Sarah");

  // ✅ Gute Praxis: Sinnvolle Parameter
  print("");
  print("✅ Gute Praxis: Sinnvolle Parameter");
  berechneFlaeche(5.0, 3.0);

  // ❌ Schlechte Praxis: Unklare Namen
  print("");
  print("❌ Schlechte Praxis: Unklare Namen");
  // doSomething(x, y); // Das wäre schlecht!

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Methoden helfen dir, Code zu organisieren");
  print("- Du kannst Methoden mit und ohne Parameter schreiben");
  print("- Methoden können verschiedene Datentypen verwenden");
  print("- Verwende klare, aussagekräftige Namen für deine Methoden");
  print("- Methoden machen deinen Code lesbarer und wartbarer");
}

// ========================================
// METHODEN-DEFINITIONEN
// ========================================

// Einfache Methode ohne Parameter
void begruessung() {
  print("Hallo! Willkommen im Dart-Kurs!");
}

// Methode mit einem Parameter
void begruessePerson(String name) {
  print("Hallo " + name + "! Schön, dass du da bist!");
}

// Methode mit zwei Parametern
void zeigePerson(String name, int alter) {
  print("Name: " + name + ", Alter: " + alter.toString() + " Jahre");
}

// Methode mit Zahlen
void zeigeZahlen(int zahl1, int zahl2) {
  print("Erste Zahl: " + zahl1.toString());
  print("Zweite Zahl: " + zahl2.toString());
}

// Methode mit Strings
void verbindeWoerter(String wort1, String wort2) {
  String zusammen = wort1 + " " + wort2;
  print("Zusammengesetzt: " + zusammen);
}

// Methode mit bool
void zeigeStatus(bool istAktiv) {
  if (istAktiv) {
    print("Status: Aktiv");
  } else {
    print("Status: Inaktiv");
  }
}

// Methode für Addition
void addiereZahlen(int zahl1, int zahl2) {
  int summe = zahl1 + zahl2;
  print(zahl1.toString() + " + " + zahl2.toString() + " = " + summe.toString());
}

// Methode für Multiplikation
void multipliziereZahlen(int zahl1, int zahl2) {
  int produkt = zahl1 * zahl2;
  print(zahl1.toString() + " × " + zahl2.toString() + " = " + produkt.toString());
}

// Methode mit Namensliste
void zeigeNamenListe(List<String> namen) {
  print("Liste der Namen:");
  for (int i = 0; i < namen.length; i = i + 1) {
    print("  " + (i + 1).toString() + ". " + namen[i]);
  }
}

// Methode mit Zahlenliste
void zeigeZahlenListe(List<int> zahlen) {
  print("Liste der Zahlen:");
  for (int i = 0; i < zahlen.length; i = i + 1) {
    print("  " + (i + 1).toString() + ". " + zahlen[i].toString());
  }
}

// Methode für Wetter
void zeigeWetter(String wetter, double temperatur) {
  print("Wetter: " + wetter);
  print("Temperatur: " + temperatur.toString() + "°C");

  if (temperatur > 20) {
    print("Es ist warm!");
  } else if (temperatur > 10) {
    print("Es ist angenehm.");
  } else {
    print("Es ist kalt.");
  }
}

// Methode für Einkaufsliste
void zeigeEinkaufsliste(List<String> einkauf) {
  print("Deine Einkaufsliste:");
  for (int i = 0; i < einkauf.length; i = i + 1) {
    print("  " + (i + 1).toString() + ". " + einkauf[i]);
  }
}

// Methode mit klarem Namen
void begruesseBenutzer(String name) {
  print("Willkommen zurück, " + name + "!");
}

// Methode für Flächenberechnung
void berechneFlaeche(double laenge, double breite) {
  double flaeche = laenge * breite;
  print("Länge: " + laenge.toString() + " m");
  print("Breite: " + breite.toString() + " m");
  print("Fläche: " + flaeche.toString() + " m²");
}

/*
 * ÜBUNGEN:
 * Erstelle eine Methode, die deinen Namen und dein Alter ausgibt
 * Schreibe eine Methode, die zwei Zahlen addiert und das Ergebnis ausgibt
 * Baue eine Methode, die eine einfache Begrüßung je nach Tageszeit ausgibt
 */
