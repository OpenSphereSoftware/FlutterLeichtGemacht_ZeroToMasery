/*
 * DART GRUNDLAGEN KURS - Lektion 13: Methoden mit Rückgabewert
 * ===========================================================
 * 
 * In dieser Lektion lernst du:
 * - Wie du Methoden schreibst, die Werte zurückgeben
 * - Verschiedene Datentypen als Rückgabewerte
 * - Wie du Rückgabewerte verwendest
 * - Praktische Anwendungen von Methoden mit Rückgabewert
 * - Best Practices für Methoden mit Rückgabewert
 */

void main() {
  print("=== METHODEN MIT RÜCKGABEWERT IN DART ===");
  print("");

  // ========================================
  // 1. WAS IST EIN RÜCKGABEWERT?
  // ========================================
  print("1. WAS IST EIN RÜCKGABEWERT?");
  print("--------------------------------");

  print("Ein Rückgabewert ist das Ergebnis, das eine Methode dir gibt.");
  print("Statt nur etwas auszugeben, kann eine Methode einen Wert zurückgeben,");
  print("den du dann weiterverwenden kannst.");
  print("");

  // ========================================
  // 2. EINFACHE METHODEN MIT RÜCKGABEWERT
  // ========================================
  print("2. EINFACHE METHODEN MIT RÜCKGABEWERT:");
  print("----------------------------------------");

  // Methode aufrufen und Ergebnis speichern
  print("Ich rufe eine Methode auf und speichere das Ergebnis:");
  String begruessung = holeBegruessung();
  print("Ergebnis: " + begruessung);

  print("");
  print("Ich kann das Ergebnis weiterverwenden:");
  print("Länge der Begrüßung: " + begruessung.length.toString() + " Zeichen");

  // ========================================
  // 3. METHODEN MIT ZAHLEN ALS RÜCKGABEWERT
  // ========================================
  print("");
  print("3. METHODEN MIT ZAHLEN ALS RÜCKGABEWERT:");
  print("-------------------------------------------");

  // Addition mit Rückgabewert
  print("Ich addiere zwei Zahlen:");
  int summe = addiere(15, 25);
  print("Das Ergebnis ist: " + summe.toString());

  // Multiplikation mit Rückgabewert
  print("");
  print("Ich multipliziere zwei Zahlen:");
  int produkt = multipliziere(4, 7);
  print("Das Ergebnis ist: " + produkt.toString());

  // ========================================
  // 4. METHODEN MIT STRINGS ALS RÜCKGABEWERT
  // ========================================
  print("");
  print("4. METHODEN MIT STRINGS ALS RÜCKGABEWERT:");
  print("-------------------------------------------");

  // Namen verbinden
  print("Ich verbinde zwei Namen:");
  String vollerName = verbindeNamen("Max", "Mustermann");
  print("Voller Name: " + vollerName);

  // Begrüßung erstellen
  print("");
  print("Ich erstelle eine persönliche Begrüßung:");
  String begruessung2 = erstelleBegruessung("Anna");
  print(begruessung2);

  // ========================================
  // 5. METHODEN MIT BOOL ALS RÜCKGABEWERT
  // ========================================
  print("");
  print("5. METHODEN MIT BOOL ALS RÜCKGABEWERT:");
  print("----------------------------------------");

  // Alter überprüfen
  print("Ich überprüfe, ob jemand volljährig ist:");
  bool istVolljaehrig = pruefeVolljaehrigkeit(20);
  print("Ist 20 Jahre alt volljährig? " + istVolljaehrig.toString());

  print("");
  bool istVolljaehrig2 = pruefeVolljaehrigkeit(16);
  print("Ist 16 Jahre alt volljährig? " + istVolljaehrig2.toString());

  // ========================================
  // 6. METHODEN MIT LISTEN ALS RÜCKGABEWERT
  // ========================================
  print("");
  print("6. METHODEN MIT LISTEN ALS RÜCKGABEWERT:");
  print("-------------------------------------------");

  // Liste erstellen
  print("Ich erstelle eine Liste mit Zahlen:");
  List<int> zahlen = erstelleZahlenListe(5);
  print("Erstellte Liste: " + zahlen.toString());

  // Liste verarbeiten
  print("");
  print("Ich verarbeite die Liste:");
  for (int i = 0; i < zahlen.length; i = i + 1) {
    print("Zahl " + (i + 1).toString() + ": " + zahlen[i].toString());
  }

  // ========================================
  // 7. METHODEN MIT MAPS ALS RÜCKGABEWERT
  // ========================================
  print("");
  print("7. METHODEN MIT MAPS ALS RÜCKGABEWERT:");
  print("----------------------------------------");

  // Benutzerprofil erstellen
  print("Ich erstelle ein Benutzerprofil:");
  Map<String, dynamic> profil = erstelleBenutzerProfil("Lisa", 28, "Entwicklerin");
  print("Profil: " + profil.toString());

  // Profil verwenden
  print("");
  print("Ich verwende das Profil:");
  String name = profil["name"];
  int alter = profil["alter"];
  String beruf = profil["beruf"];
  print("Name: " + name + ", Alter: " + alter.toString() + ", Beruf: " + beruf);

  // ========================================
  // 8. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("8. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Taschenrechner
  print("🧮 TASCHENRECHNER:");
  double ergebnis1 = berechneFlaeche(5.0, 3.0);
  print("Fläche: " + ergebnis1.toString() + " m²");

  double ergebnis2 = berechneUmfang(5.0, 3.0);
  print("Umfang: " + ergebnis2.toString() + " m");

  // Notenverarbeitung
  print("");
  print("📚 NOTENVERARBEITUNG:");
  List<double> noten = [2.3, 1.7, 2.0, 1.3, 2.7];
  double durchschnitt = berechneDurchschnitt(noten);
  print("Durchschnittsnote: " + durchschnitt.toStringAsFixed(2));

  String bewertung = bewerteNote(durchschnitt);
  print("Bewertung: " + bewertung);

  // ========================================
  // 9. BEST PRACTICES
  // ========================================
  print("");
  print("9. BEST PRACTICES:");
  print("-------------------");

  // ✅ Gute Praxis: Klare Rückgabetypen
  print("✅ Gute Praxis: Klare Rückgabetypen");
  String wochentag = holeWochentag(3);
  print("Wochentag: " + wochentag);

  // ✅ Gute Praxis: Sinnvolle Rückgabewerte
  print("");
  print("✅ Gute Praxis: Sinnvolle Rückgabewerte");
  bool istPrimzahl = pruefePrimzahl(7);
  print("Ist 7 eine Primzahl? " + istPrimzahl.toString());

  // ❌ Schlechte Praxis: Unklare Rückgabewerte
  print("");
  print("❌ Schlechte Praxis: Unklare Rückgabewerte");
  // int ergebnis = machIrgendwas(); // Das wäre schlecht!

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Methoden können Werte zurückgeben, die du weiterverwenden kannst");
  print("- Verschiedene Datentypen können als Rückgabewerte verwendet werden");
  print("- Rückgabewerte machen deine Methoden flexibler und nützlicher");
  print("- Verwende klare Rückgabetypen und aussagekräftige Namen");
  print("- Methoden mit Rückgabewert sind die Grundlage für komplexere Programme");
}

// ========================================
// METHODEN-DEFINITIONEN MIT RÜCKGABEWERT
// ========================================

// Methode, die einen String zurückgibt
String holeBegruessung() {
  return "Hallo! Willkommen im Dart-Kurs!";
}

// Methode, die zwei Zahlen addiert und das Ergebnis zurückgibt
int addiere(int zahl1, int zahl2) {
  int summe = zahl1 + zahl2;
  return summe;
}

// Methode, die zwei Zahlen multipliziert und das Ergebnis zurückgibt
int multipliziere(int zahl1, int zahl2) {
  int produkt = zahl1 * zahl2;
  return produkt;
}

// Methode, die zwei Namen verbindet
String verbindeNamen(String vorname, String nachname) {
  String vollerName = vorname + " " + nachname;
  return vollerName;
}

// Methode, die eine persönliche Begrüßung erstellt
String erstelleBegruessung(String name) {
  String begruessung = "Hallo " + name + "! Schön, dass du da bist!";
  return begruessung;
}

// Methode, die prüft, ob jemand volljährig ist
bool pruefeVolljaehrigkeit(int alter) {
  if (alter >= 18) {
    return true;
  } else {
    return false;
  }
}

// Methode, die eine Liste mit Zahlen erstellt
List<int> erstelleZahlenListe(int anzahl) {
  List<int> zahlen = [];
  for (int i = 1; i <= anzahl; i = i + 1) {
    zahlen.add(i);
  }
  return zahlen;
}

// Methode, die ein Benutzerprofil erstellt
Map<String, dynamic> erstelleBenutzerProfil(String name, int alter, String beruf) {
  Map<String, dynamic> profil = {"name": name, "alter": alter, "beruf": beruf};
  return profil;
}

// Methode, die die Fläche eines Rechtecks berechnet
double berechneFlaeche(double laenge, double breite) {
  double flaeche = laenge * breite;
  return flaeche;
}

// Methode, die den Umfang eines Rechtecks berechnet
double berechneUmfang(double laenge, double breite) {
  double umfang = 2 * (laenge + breite);
  return umfang;
}

// Methode, die den Durchschnitt einer Notenliste berechnet
double berechneDurchschnitt(List<double> noten) {
  double summe = 0;
  for (int i = 0; i < noten.length; i = i + 1) {
    summe = summe + noten[i];
  }
  double durchschnitt = summe / noten.length;
  return durchschnitt;
}

// Methode, die eine Note bewertet
String bewerteNote(double note) {
  if (note <= 1.5) {
    return "Sehr gut";
  } else if (note <= 2.5) {
    return "Gut";
  } else if (note <= 3.5) {
    return "Befriedigend";
  } else {
    return "Verbesserungswürdig";
  }
}

// Methode, die einen Wochentag zurückgibt
String holeWochentag(int tag) {
  if (tag == 1) {
    return "Montag";
  } else if (tag == 2) {
    return "Dienstag";
  } else if (tag == 3) {
    return "Mittwoch";
  } else if (tag == 4) {
    return "Donnerstag";
  } else if (tag == 5) {
    return "Freitag";
  } else if (tag == 6) {
    return "Samstag";
  } else if (tag == 7) {
    return "Sonntag";
  } else {
    return "Ungültiger Tag";
  }
}

// Methode, die prüft, ob eine Zahl eine Primzahl ist
bool pruefePrimzahl(int zahl) {
  if (zahl < 2) {
    return false;
  }

  for (int i = 2; i < zahl; i = i + 1) {
    if (zahl % i == 0) {
      return false;
    }
  }

  return true;
}

/*
 * ÜBUNGEN:
 * Erstelle eine Methode, die dein Alter in Tagen berechnet und zurückgibt
 * Schreibe eine Methode, die prüft, ob eine Zahl gerade ist und true/false zurückgibt
 */
