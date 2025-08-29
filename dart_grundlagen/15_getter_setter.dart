/*
 * DART GRUNDLAGEN KURS - Lektion 15: Getter und Setter
 * ====================================================
 * 
 * In dieser Lektion lernst du:
 * - Was Getter und Setter sind
 * - Wie du sie verwendest
 * - Wann du sie brauchst
 */

void main() {
  print("=== GETTER UND SETTER IN DART ===");
  print("");

  // ========================================
  // 1. WAS SIND GETTER UND SETTER?
  // ========================================
  print("1. WAS SIND GETTER UND SETTER?");
  print("---------------------------------");

  print("Getter: Du bekommst einen Wert (wie lesen)");
  print("Setter: Du setzt einen Wert (wie schreiben)");
  print("");

  // ========================================
  // 2. EINFACHE GETTER UND SETTER
  // ========================================
  print("2. EINFACHE GETTER UND SETTER:");
  print("--------------------------------");

  // Objekt erstellen
  Bankkonto konto = Bankkonto("Max", 1000);

  // Getter verwenden
  print("Kontostand: " + konto.kontostand.toString() + "€");
  print("Kontoinhaber: " + konto.kontoinhaber);

  // Setter verwenden
  konto.kontostand = 1500;
  print("Neuer Kontostand: " + konto.kontostand.toString() + "€");

  // ========================================
  // 3. GETTER MIT BERECHNUNG
  // ========================================
  print("");
  print("3. GETTER MIT BERECHNUNG:");
  print("---------------------------");

  Rechteck rechteck = Rechteck(5, 3);

  // Fläche berechnen (Getter)
  print("Länge: " + rechteck.laenge.toString() + " m");
  print("Breite: " + rechteck.breite.toString() + " m");
  print("Fläche: " + rechteck.flaeche.toString() + " m²");

  // ========================================
  // 4. SETTER MIT VALIDIERUNG
  // ========================================
  print("");
  print("4. SETTER MIT VALIDIERUNG:");
  print("-----------------------------");

  Person person = Person("Anna", 25);

  // Alter setzen
  person.alter = 30;
  print("Neues Alter: " + person.alter.toString());

  // Ungültiges Alter setzen
  person.alter = -5; // Wird auf 0 gesetzt
  print("Alter nach ungültiger Eingabe: " + person.alter.toString());

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Temperatur-Klasse
  Temperatur temp = Temperatur(20);
  print("🌡️  Temperatur: " + temp.celsius.toString() + "°C");
  print("Fahrenheit: " + temp.fahrenheit.toString() + "°F");

  // Temperatur ändern
  temp.celsius = 25;
  print("Neue Temperatur: " + temp.celsius.toString() + "°C");
  print("Neue Fahrenheit: " + temp.fahrenheit.toString() + "°F");

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Getter geben dir Werte zurück");
  print("- Setter lassen dich Werte setzen");
  print("- Du kannst Berechnungen in Gettern machen");
  print("- Du kannst Validierung in Settern machen");
}

// ========================================
// KLASSEN-DEFINITIONEN
// ========================================

// Bankkonto mit Getter und Setter
class Bankkonto {
  String kontoinhaber;
  double _kontostand; // Private Variable

  Bankkonto(this.kontoinhaber, this._kontostand);

  // Getter für Kontostand
  double get kontostand => _kontostand;

  // Setter für Kontostand
  set kontostand(double wert) {
    if (wert >= 0) {
      _kontostand = wert;
    }
  }
}

// Rechteck mit berechneter Fläche
class Rechteck {
  double laenge;
  double breite;

  Rechteck(this.laenge, this.breite);

  // Getter für Fläche
  double get flaeche => laenge * breite;
}

// Person mit validiertem Alter
class Person {
  String name;
  int _alter;

  Person(this.name, this._alter);

  // Getter für Alter
  int get alter => _alter;

  // Setter für Alter mit Validierung
  set alter(int wert) {
    if (wert >= 0 && wert <= 150) {
      _alter = wert;
    } else {
      _alter = 0; // Standardwert bei ungültiger Eingabe
    }
  }
}

// Temperatur mit Umrechnung
class Temperatur {
  double _celsius;

  Temperatur(this._celsius);

  // Getter für Celsius
  double get celsius => _celsius;

  // Setter für Celsius
  set celsius(double wert) {
    _celsius = wert;
  }

  // Getter für Fahrenheit (berechnet)
  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

/*
 * ÜBUNGEN:
 * Erstelle eine Klasse mit einem Getter, der deinen Namen in Großbuchstaben zurückgibt
 * Erstelle eine Klasse mit einem Setter, der nur positive Zahlen akzeptiert
 * Erstelle eine Klasse mit einem Getter, der dein Alter in Tagen berechnet
 */
