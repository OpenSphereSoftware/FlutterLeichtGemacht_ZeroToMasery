/*
 * DART GRUNDLAGEN KURS - Lektion 11: ForEach-Schleifen
 * ===================================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du forEach-Schleifen verwendest
 * - Den Unterschied zwischen forEach und anderen Schleifen
 * - Lambda-Funktionen und Arrow-Funktionen
 * - Wann du forEach einsetzen solltest
 * - Best Practices für forEach
 */

void main() {
  print("=== FOR-EACH SCHLEIFEN IN DART ===");
  print("");

  // ========================================
  // 1. EINFACHE FOR-EACH SCHLEIFEN
  // ========================================
  print("1. EINFACHE FOR-EACH SCHLEIFEN:");
  print("----------------------------------");

  List<int> zahlen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("Zahlen mit forEach:");
  zahlen.forEach((zahl) {
    print("Zahl: " + zahl.toString());
  });

  // ========================================
  // 2. FOR-EACH MIT STRINGS
  // ========================================
  print("");
  print("2. FOR-EACH MIT STRINGS:");
  print("---------------------------");

  List<String> namen = ["Anna", "Max", "Lisa", "Tom", "Sarah"];

  print("Namen mit forEach:");
  namen.forEach((name) {
    print("Hallo " + name + "!");
  });

  // Mit Index (wenn benötigt)
  print("");
  print("Namen mit Nummerierung:");
  int index = 1;
  namen.forEach((name) {
    print("Name " + index.toString() + ": " + name);
    index = index + 1;
  });

  // ========================================
  // 3. FOR-EACH MIT BEDINGUNGEN
  // ========================================
  print("");
  print("3. FOR-EACH MIT BEDINGUNGEN:");
  print("-------------------------------");

  List<int> testZahlen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("Gerade Zahlen mit forEach:");
  testZahlen.forEach((zahl) {
    if (zahl % 2 == 0) {
      print("Gerade Zahl: " + zahl.toString());
    }
  });

  print("");
  print("Ungerade Zahlen mit forEach:");
  testZahlen.forEach((zahl) {
    if (zahl % 2 != 0) {
      print("Ungerade Zahl: " + zahl.toString());
    }
  });

  // ========================================
  // 4. FOR-EACH MIT MAPS
  // ========================================
  print("");
  print("4. FOR-EACH MIT MAPS:");
  print("-----------------------");

  Map<String, int> alter = {"Anna": 25, "Max": 30, "Lisa": 28, "Tom": 35};

  print("Alter mit forEach:");
  alter.forEach((name, alter) {
    print(name + " ist " + alter.toString() + " Jahre alt");
  });

  // ========================================
  // 5. LAMBDA-FUNKTIONEN UND ARROW-FUNKTIONEN
  // ========================================
  print("");
  print("5. LAMBDA-FUNKTIONEN UND ARROW-FUNKTIONEN:");
  print("---------------------------------------------");

  List<double> noten = [2.3, 1.7, 2.0, 1.3, 2.7, 3.0, 1.0];

  // Normale Lambda-Funktion
  print("Noten mit normaler Lambda-Funktion:");
  noten.forEach((note) {
    if (note <= 1.5) {
      print("Sehr gut: " + note.toString());
    } else if (note <= 2.5) {
      print("Gut: " + note.toString());
    } else {
      print("Verbesserungswürdig: " + note.toString());
    }
  });

  // Arrow-Funktion (einfache Fälle)
  print("");
  print("Noten mit Arrow-Funktion:");
  noten.forEach((note) => print("Note: " + note.toString()));

  // ========================================
  // 6. FOR-EACH VS. FOR-IN
  // ========================================
  print("");
  print("6. FOR-EACH VS. FOR-IN:");
  print("-------------------------");

  List<String> tiere = ["Hund", "Katze", "Vogel", "Fisch"];

  // Mit for-in
  print("Mit for-in:");
  for (String tier in tiere) {
    print("Tier: " + tier);
  }

  // Mit forEach
  print("");
  print("Mit forEach:");
  tiere.forEach((tier) {
    print("Tier: " + tier);
  });

  // ========================================
  // 7. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("7. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Einkaufsliste verarbeiten
  List<Map<String, dynamic>> einkauf = [
    {"produkt": "Äpfel", "preis": 2.50, "menge": 6},
    {"produkt": "Milch", "preis": 1.20, "menge": 2},
    {"produkt": "Brot", "preis": 1.80, "menge": 1},
    {"produkt": "Eier", "preis": 3.50, "menge": 12},
  ];

  print("🛒 EINKAUFSLISTE MIT FOR-EACH:");
  double gesamtPreis = 0;

  einkauf.forEach((artikel) {
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
  });

  print("Gesamtpreis: " + gesamtPreis.toStringAsFixed(2) + "€");

  // Benutzerprofil
  Map<String, dynamic> benutzer = {
    "name": "Max Mustermann",
    "alter": 28,
    "beruf": "Entwickler",
    "stadt": "Berlin",
    "hobbys": ["Programmieren", "Lesen", "Sport"],
  };

  print("");
  print("👤 BENUTZERPROFIL MIT FOR-EACH:");
  benutzer.forEach((schluessel, wert) {
    if (schluessel == "hobbys") {
      print("Hobbys:");
      List<String> hobbys = wert;
      hobbys.forEach((hobby) {
        print("  - " + hobby);
      });
    } else {
      print(schluessel + ": " + wert.toString());
    }
  });

  // ========================================
  // 8. FOR-EACH MIT FILTERN
  // ========================================
  print("");
  print("8. FOR-EACH MIT FILTERN:");
  print("---------------------------");

  List<int> alleZahlen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  // Zahlen durch 3 teilbar
  print("Zahlen durch 3 teilbar:");
  alleZahlen.forEach((zahl) {
    if (zahl % 3 == 0) {
      print("  " + zahl.toString() + " ist durch 3 teilbar");
    }
  });

  // Primzahlen bis 15
  print("");
  print("Primzahlen bis 15:");
  alleZahlen.forEach((zahl) {
    if (zahl > 1) {
      bool istPrimzahl = true;
      for (int i = 2; i < zahl; i = i + 1) {
        if (zahl % i == 0) {
          istPrimzahl = false;
          break;
        }
      }
      if (istPrimzahl) {
        print("  " + zahl.toString() + " ist eine Primzahl");
      }
    }
  });

  // ========================================
  // 9. BEST PRACTICES
  // ========================================
  print("");
  print("9. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Einfache Operationen
  List<String> worte = ["Hallo", "Welt", "Dart", "Programmierung"];

  print("Worte mit forEach:");
  worte.forEach((wort) => print("Wort: " + wort));

  // ✅ Gute Praxis: Komplexe Logik
  List<double> temperaturen = [22.5, 18.3, 25.7, 12.1, 30.2];

  print("");
  print("Temperaturbewertung:");
  temperaturen.forEach((temp) {
    if (temp < 15) {
      print("  " + temp.toString() + "°C: Kalt");
    } else if (temp < 25) {
      print("  " + temp.toString() + "°C: Angenehm");
    } else {
      print("  " + temp.toString() + "°C: Warm");
    }
  });

  // ❌ Schlechte Praxis: Zu komplexe Logik in forEach
  // temperaturen.forEach((temp) {
  //   // Hier sollte nicht zu viel Logik stehen
  //   // Besser: Separate Funktion oder for-Schleife
  // });

  // ========================================
  // 10. WANN FOR-EACH VERWENDEN?
  // ========================================
  print("");
  print("10. WANN FOR-EACH VERWENDEN?");
  print("-------------------------------");

  // ✅ ForEach ist ideal für:
  // - Einfache Operationen auf allen Elementen
  // - Funktionale Programmierung
  // - Kurze, lesbare Schleifen
  // - Keine Index-Information benötigt

  // ✅ For-Schleife ist besser für:
  // - Index-Information benötigt
  // - Komplexe Schleifenlogik
  // - Verschachtelte Schleifen
  // - Schleifensteuerung (break, continue)

  print("🎯 ZUSAMMENFASSUNG:");
  print("- ForEach ist ideal für einfache Operationen auf Listen");
  print("- Lambda-Funktionen ermöglichen kompakte Syntax");
  print("- Arrow-Funktionen für sehr einfache Fälle");
  print("- Verwende forEach für funktionale Programmierung");
  print("- Verwende for-Schleifen für komplexe Logik");
}

/*
 * ÜBUNGEN:
 * Erstelle eine Liste von Namen und verwende forEach, um sie zu begrüßen
 * Baue eine forEach-Schleife, die alle Zahlen von 1-20 filtert und ausgibt
 */
