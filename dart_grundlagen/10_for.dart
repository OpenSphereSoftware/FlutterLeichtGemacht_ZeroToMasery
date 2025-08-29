/*
 * DART GRUNDLAGEN KURS - Lektion 10: For-Schleifen
 * ================================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du for-Schleifen verwendest
 * - Verschiedene Arten von for-Schleifen
 * - For-in und for-each Schleifen
 * - Wann du for-Schleifen einsetzen solltest
 * - Best Practices für for-Schleifen
 */

void main() {
  print("=== FOR-SCHLEIFEN IN DART ===");
  print("");

  // ========================================
  // 1. EINFACHE FOR-SCHLEIFEN
  // ========================================
  print("1. EINFACHE FOR-SCHLEIFEN:");
  print("------------------------------");

  print("Zähle von 1 bis 5:");
  for (int i = 1; i <= 5; i = i + 1) {
    print("Zahl: " + i.toString());
  }

  // ========================================
  // 2. FOR-SCHLEIFEN MIT VERSCHIEDENEN SCHRITTWEITEN
  // ========================================
  print("");
  print("2. FOR-SCHLEIFEN MIT VERSCHIEDENEN SCHRITTWEITEN:");
  print("---------------------------------------------------");

  // Zählen in 2er-Schritten
  print("Zähle in 2er-Schritten von 0 bis 10:");
  for (int i = 0; i <= 10; i = i + 2) {
    print("Gerade Zahl: " + i.toString());
  }

  // Rückwärts zählen
  print("");
  print("Zähle rückwärts von 10 bis 1:");
  for (int i = 10; i >= 1; i = i - 1) {
    print("Zahl: " + i.toString());
  }

  // ========================================
  // 3. FOR-SCHLEIFEN MIT LISTEN
  // ========================================
  print("");
  print("3. FOR-SCHLEIFEN MIT LISTEN:");
  print("-------------------------------");

  List<int> zahlen = [3, 4, 5, 6, 7, 5];
  List<int> gefilterteZahlen = [];

  print("Originale Liste: " + zahlen.toString());

  // Mit Index durch die Liste laufen
  print("Durchlaufe Liste mit Index:");
  for (int i = 0; i < zahlen.length; i = i + 1) {
    print("Index " + i.toString() + ": " + zahlen[i].toString());

    // Filtere bestimmte Zahlen
    if (zahlen[i] == 3) {
      gefilterteZahlen.add(zahlen[i]);
    }
  }

  print("Gefilterte Liste: " + gefilterteZahlen.toString());

  // ========================================
  // 4. FOR-IN SCHLEIFEN
  // ========================================
  print("");
  print("4. FOR-IN SCHLEIFEN:");
  print("----------------------");

  List<String> namen = ["Anna", "Max", "Lisa", "Tom", "Sarah"];

  print("Namen mit for-in:");
  for (String name in namen) {
    print("Name: " + name);
  }

  // Mit Index und for-in
  print("");
  print("Namen mit Index (for-in mit asMap):");
  for (String name in namen) {
    int index = namen.indexOf(name);
    print("Name " + (index + 1).toString() + ": " + name);
  }

  // ========================================
  // 5. VERSCHACHTELTE FOR-SCHLEIFEN
  // ========================================
  print("");
  print("5. VERSCHACHTELTE FOR-SCHLEIFEN:");
  print("----------------------------------");

  print("Multiplikationstabelle (1-5):");
  for (int i = 1; i <= 5; i = i + 1) {
    for (int j = 1; j <= 5; j = j + 1) {
      int produkt = i * j;
      print(i.toString() + " × " + j.toString() + " = " + produkt.toString());
    }
    print(""); // Leerzeile zwischen den Tabellen
  }

  // ========================================
  // 6. FOR-SCHLEIFEN MIT BREAK UND CONTINUE
  // ========================================
  print("");
  print("6. FOR-SCHLEIFEN MIT BREAK UND CONTINUE:");
  print("------------------------------------------");

  // Break: Schleife vorzeitig beenden
  print("Suche nach der ersten Zahl größer als 5:");
  for (int i = 1; i <= 10; i = i + 1) {
    if (i > 5) {
      print("Erste Zahl größer als 5 gefunden: " + i.toString());
      break; // Schleife beenden
    }
    print("Prüfe: " + i.toString());
  }

  // Continue: Zum nächsten Durchlauf springen
  print("");
  print("Zähle von 1 bis 10, aber überspringe 5:");
  for (int i = 1; i <= 10; i = i + 1) {
    if (i == 5) {
      continue; // Zum nächsten Durchlauf springen
    }
    print("Zahl: " + i.toString());
  }

  // ========================================
  // 7. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("7. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Notenliste verarbeiten
  List<double> noten = [2.3, 1.7, 2.0, 1.3, 2.7, 3.0, 1.0];

  print("📚 NOTENVERARBEITUNG:");
  print("Alle Noten: " + noten.toString());

  double summe = 0;
  int anzahl = 0;

  for (int i = 0; i < noten.length; i = i + 1) {
    summe = summe + noten[i];
    anzahl = anzahl + 1;

    if (noten[i] <= 1.5) {
      print("Sehr gute Note: " + noten[i].toString());
    } else if (noten[i] <= 2.5) {
      print("Gute Note: " + noten[i].toString());
    } else {
      print("Note verbesserungswürdig: " + noten[i].toString());
    }
  }

  double durchschnitt = summe / anzahl;
  print("Durchschnittsnote: " + durchschnitt.toStringAsFixed(2));

  // Einkaufsliste
  List<Map<String, dynamic>> einkauf = [
    {"produkt": "Äpfel", "preis": 2.50, "menge": 6},
    {"produkt": "Milch", "preis": 1.20, "menge": 2},
    {"produkt": "Brot", "preis": 1.80, "menge": 1},
    {"produkt": "Eier", "preis": 3.50, "menge": 12},
  ];

  print("");
  print("🛒 EINKAUFSLISTE:");
  double gesamtPreis = 0;

  for (int i = 0; i < einkauf.length; i = i + 1) {
    Map<String, dynamic> artikel = einkauf[i];
    String produkt = artikel["produkt"];
    double preis = artikel["preis"];
    int menge = artikel["menge"];
    double artikelPreis = preis * menge;

    print(
      "  " +
          produkt +
          ": " +
          menge.toString() +
          " × " +
          preis.toString() +
          "€ = " +
          artikelPreis.toStringAsFixed(2) +
          "€",
    );
    gesamtPreis = gesamtPreis + artikelPreis;
  }

  print("Gesamtpreis: " + gesamtPreis.toStringAsFixed(2) + "€");

  // ========================================
  // 8. BEST PRACTICES
  // ========================================
  print("");
  print("8. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Klare Schleifenvariablen
  List<int> primzahlen = [2, 3, 5, 7, 11, 13, 17, 19];

  print("Primzahlen bis 20:");
  for (int primzahl in primzahlen) {
    print("Primzahl: " + primzahl.toString());
  }

  // ✅ Gute Praxis: Sinnvolle Schleifengrenzen
  print("");
  print("Quadratzahlen von 1 bis 10:");
  for (int i = 1; i <= 10; i = i + 1) {
    int quadrat = i * i;
    print(i.toString() + "² = " + quadrat.toString());
  }

  // ❌ Schlechte Praxis: Unklare Schleifenvariablen
  // for (int x = 0; x < 10; x = x + 1) {
  //   print("Schlecht benannte Variable: " + x.toString());
  // }

  // ========================================
  // 9. FOR VS. WHILE SCHLEIFEN
  // ========================================
  print("");
  print("9. FOR VS. WHILE SCHLEIFEN:");
  print("-------------------------------");

  // For-Schleife (besser für bekannte Anzahl von Durchläufen)
  print("For-Schleife für bekannte Anzahl:");
  for (int i = 1; i <= 5; i = i + 1) {
    print("Durchlauf " + i.toString());
  }

  // While-Schleife (besser für unbekannte Anzahl von Durchläufen)
  print("");
  print("While-Schleife für unbekannte Anzahl:");
  int whileZaehler = 1;
  while (whileZaehler * whileZaehler < 50) {
    print(whileZaehler.toString() + "² = " + (whileZaehler * whileZaehler).toString());
    whileZaehler = whileZaehler + 1;
  }

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- For-Schleifen sind ideal für bekannte Anzahl von Durchläufen");
  print("- For-in durchläuft alle Elemente einer Liste");
  print("- Verschachtelte Schleifen für mehrdimensionale Daten");
  print("- Break beendet Schleifen, continue überspringt Durchläufe");
  print("- Verwende for für bekannte Anzahl, while für unbekannte Anzahl");
}

/*
 * ÜBUNGEN:
 * Erstelle eine Schleife, die alle Zahlen von 1 bis 100 addiert
 * Baue eine Schleife, die alle geraden Zahlen bis 50 ausgibt
 * Implementiere eine Schleife, die eine Liste von Namen verarbeitet
 */
