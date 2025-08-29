/*
 * DART GRUNDLAGEN KURS - Lektion 5: Listen und Maps
 * =================================================
 * 
 * In dieser Lektion lernst du:
 * - Was Listen sind und wie du sie verwendest
 * - Was Maps sind und wofür sie nützlich sind
 * - Verschiedene Methoden zum Arbeiten mit Listen und Maps
 * - Praktische Anwendungen im Alltag
 */

void main() {
  print("=== LISTEN UND MAPS IN DART ===");
  print("");

  // ========================================
  // 1. LISTEN (ARRAYS)
  // ========================================
  print("1. LISTEN (ARRAYS):");
  print("---------------------");

  // Leere Liste erstellen
  List<String> einkaufsliste = [];
  print("Leere Einkaufsliste: " + einkaufsliste.toString());

  // Liste mit initialen Werten
  List<String> obst = ["Apfel", "Banane", "Orange"];
  print("Obstliste: " + obst.toString());

  // Liste mit verschiedenen Datentypen (nicht empfohlen)
  List<dynamic> gemischteListe = [1, "Text", true, 3.14];
  print("Gemischte Liste: " + gemischteListe.toString());

  // ========================================
  // 2. LISTEN-EIGENSCHAFTEN
  // ========================================
  print("");
  print("2. LISTEN-EIGENSCHAFTEN:");
  print("---------------------------");

  List<int> zahlen = [10, 20, 30, 40, 50];

  print("Liste: " + zahlen.toString());
  print("Länge: " + zahlen.length.toString());
  print("Erstes Element: " + zahlen.first.toString());
  print("Letztes Element: " + zahlen.last.toString());
  print("Ist leer: " + zahlen.isEmpty.toString());
  print("Ist nicht leer: " + zahlen.isNotEmpty.toString());

  // ========================================
  // 3. AUF LISTENELEMENTE ZUGREIFEN
  // ========================================
  print("");
  print("3. AUF LISTENELEMENTE ZUGREIFEN:");
  print("-----------------------------------");

  List<String> namen = ["Anna", "Max", "Lisa", "Tom", "Sarah"];

  print("Alle Namen: " + namen.toString());
  print("Erster Name (Index 0): " + namen[0]);
  print("Zweiter Name (Index 1): " + namen[1]);
  print("Letzter Name (Index " + (namen.length - 1).toString() + "): " + namen[namen.length - 1]);

  // Mit elementAt() Methode
  print("Name an Position 2: " + namen.elementAt(2));

  // ========================================
  // 4. LISTEN VERÄNDERN
  // ========================================
  print("");
  print("4. LISTEN VERÄNDERN:");
  print("----------------------");

  List<int> zahlenListe = [1, 2, 3];
  print("Ursprüngliche Liste: " + zahlenListe.toString());

  // Element hinzufügen
  zahlenListe.add(4);
  print("Nach add(4): " + zahlenListe.toString());

  // Mehrere Elemente hinzufügen
  zahlenListe.addAll([5, 6, 7]);
  print("Nach addAll([5, 6, 7]): " + zahlenListe.toString());

  // Element an bestimmter Position einfügen
  zahlenListe.insert(0, 0);
  print("Nach insert(0, 0): " + zahlenListe.toString());

  // Element entfernen
  zahlenListe.remove(3);
  print("Nach remove(3): " + zahlenListe.toString());

  // Element an bestimmter Position entfernen
  zahlenListe.removeAt(2);
  print("Nach removeAt(2): " + zahlenListe.toString());

  // Liste leeren
  zahlenListe.clear();
  print("Nach clear(): " + zahlenListe.toString());

  // ========================================
  // 5. LISTEN DURCHSUCHEN UND FILTERN
  // ========================================
  print("");
  print("5. LISTEN DURCHSUCHEN UND FILTERN:");
  print("-------------------------------------");

  List<int> testZahlen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Enthält die Liste eine bestimmte Zahl?
  print("Enthält 5: " + testZahlen.contains(5).toString());
  print("Enthält 15: " + testZahlen.contains(15).toString());

  // Index eines Elements finden
  print("Index von 7: " + testZahlen.indexOf(7).toString());
  print("Index von 99: " + testZahlen.indexOf(99).toString() + " (wenn nicht gefunden)");

  // Elemente filtern
  List<int> geradeZahlen = testZahlen.where((zahl) => zahl % 2 == 0).toList();
  print("Gerade Zahlen: " + geradeZahlen.toString());

  List<int> ungeradeZahlen = testZahlen.where((zahl) => zahl % 2 != 0).toList();
  print("Ungerade Zahlen: " + ungeradeZahlen.toString());

  // ========================================
  // 6. MAPS (WÖRTERBÜCHER)
  // ========================================
  print("");
  print("6. MAPS (WÖRTERBÜCHER):");
  print("--------------------------");

  // Leere Map erstellen
  Map<String, String> benutzer = {};
  print("Leere Benutzer-Map: " + benutzer.toString());

  // Map mit initialen Werten
  Map<String, String> laender = {"Deutschland": "Berlin", "Frankreich": "Paris", "Italien": "Rom", "Spanien": "Madrid"};
  print("Länder und Hauptstädte: " + laender.toString());

  // ========================================
  // 7. MAP-EIGENSCHAFTEN UND ZUGRIFF
  // ========================================
  print("");
  print("7. MAP-EIGENSCHAFTEN UND ZUGRIFF:");
  print("------------------------------------");

  Map<String, int> alter = {"Anna": 25, "Max": 30, "Lisa": 28, "Tom": 35};

  print("Alter-Map: " + alter.toString());
  print("Anzahl Einträge: " + alter.length.toString());
  print("Alle Schlüssel: " + alter.keys.toString());
  print("Alle Werte: " + alter.values.toString());

  // Auf Werte zugreifen
  print("Alter von Anna: " + alter["Anna"].toString() + " Jahre");
  print("Alter von Max: " + alter["Max"].toString() + " Jahre");
  print("Alter von Unbekannt: " + alter["Unbekannt"].toString()); // null

  // Mit containsKey prüfen
  print("Enthält 'Lisa': " + alter.containsKey("Lisa").toString());
  print("Enthält 'Peter': " + alter.containsKey("Peter").toString());

  // ========================================
  // 8. MAPS VERÄNDERN
  // ========================================
  print("");
  print("8. MAPS VERÄNDERN:");
  print("---------------------");

  Map<String, String> farben = {"Himmel": "Blau", "Gras": "Grün"};
  print("Ursprüngliche Farben: " + farben.toString());

  // Neuen Eintrag hinzufügen
  farben["Sonne"] = "Gelb";
  print("Nach Hinzufügen der Sonne: " + farben.toString());

  // Wert ändern
  farben["Himmel"] = "Grau";
  print("Nach Änderung des Himmels: " + farben.toString());

  // Eintrag entfernen
  farben.remove("Gras");
  print("Nach Entfernung des Grases: " + farben.toString());

  // Alle Einträge entfernen
  farben.clear();
  print("Nach clear(): " + farben.toString());

  // ========================================
  // 9. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("9. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Einkaufsliste mit Mengen
  Map<String, int> einkauf = {"Äpfel": 6, "Milch": 2, "Brot": 1, "Eier": 12, "Käse": 1};

  print("🛒 EINKAUFSLISTE:");
  einkauf.forEach((produkt, menge) {
    print("  " + produkt + ": " + menge.toString());
  });

  // Notenliste
  Map<String, double> noten = {"Mathematik": 2.3, "Deutsch": 1.7, "Englisch": 2.0, "Physik": 1.3, "Geschichte": 2.7};

  print("");
  print("📚 NOTENLISTE:");
  double durchschnitt = noten.values.reduce((a, b) => a + b) / noten.length;
  noten.forEach((fach, note) {
    print("  " + fach + ": " + note.toString());
  });
  print("Durchschnitt: " + durchschnitt.toStringAsFixed(1));

  // Kontaktliste
  Map<String, Map<String, String>> kontakte = {
    "Max Mustermann": {"Telefon": "+49 123 456789", "Email": "max@example.com", "Stadt": "Berlin"},
    "Anna Schmidt": {"Telefon": "+49 987 654321", "Email": "anna@example.com", "Stadt": "München"},
  };

  print("");
  print("📱 KONTAKTLISTE:");
  kontakte.forEach((name, details) {
    print("  " + name + ":");
    details.forEach((typ, wert) {
      print("    " + typ + ": " + wert);
    });
    print("");
  });

  // ========================================
  // 10. LISTEN UND MAPS KOMBINIEREN
  // ========================================
  print("");
  print("10. LISTEN UND MAPS KOMBINIEREN:");
  print("-----------------------------------");

  // Liste von Maps
  List<Map<String, dynamic>> produkte = [
    {"name": "Laptop", "preis": 999.99, "kategorie": "Elektronik"},
    {"name": "Buch", "preis": 19.99, "kategorie": "Literatur"},
    {"name": "Tisch", "preis": 149.99, "kategorie": "Möbel"},
    {"name": "Kaffee", "preis": 4.99, "kategorie": "Lebensmittel"},
  ];

  print("🛍️  PRODUKTLISTE:");
  produkte.forEach((produkt) {
    print("  " + produkt['name'] + " - " + produkt['preis'].toString() + "€ (" + produkt['kategorie'] + ")");
  });

  // Teure Produkte filtern
  List<Map<String, dynamic>> teureProdukte = produkte.where((p) => p['preis'] > 100).toList();
  print("");
  print("💰 TEURE PRODUKTE (>100€):");
  teureProdukte.forEach((produkt) {
    print("  " + produkt['name'] + ": " + produkt['preis'].toString() + "€");
  });

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Listen speichern mehrere Werte in einer geordneten Reihenfolge");
  print("- Maps speichern Schlüssel-Wert-Paare");
  print("- Listen sind null-basiert (Index 0 ist das erste Element)");
  print("- Maps ermöglichen schnellen Zugriff über Schlüssel");
  print("- Beide bieten viele nützliche Methoden zum Arbeiten mit Daten");
}

/*
 * ÜBUNGEN:
 * Erstelle eine Todo-Liste mit Listen
 * Baue einen einfachen Wörterbuch mit Maps
 * Erstelle eine Schülerdatenbank mit Listen von Maps
 * Implementiere eine Einkaufsliste mit Mengen und Preisen
 */
