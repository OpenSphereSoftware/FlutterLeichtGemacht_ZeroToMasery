/*
 * DART GRUNDLAGEN KURS - Lektion 14: Klassen und Objekte
 * =====================================================
 * 
 * In dieser Lektion lernst du:
 * - Was Klassen und Objekte sind
 * - Wie du eine einfache Klasse schreibst
 * - Wie du Objekte erstellst
 * - Wie du auf Eigenschaften zugreifst
 */

void main() {
  print("=== KLASSEN UND OBJEKTE IN DART ===");
  print("");

  // ========================================
  // 1. WAS SIND KLASSEN UND OBJEKTE?
  // ========================================
  print("1. WAS SIND KLASSEN UND OBJEKTE?");
  print("----------------------------------");

  print("Eine Klasse ist wie ein Bauplan.");
  print("Ein Objekt ist etwas, das du nach diesem Bauplan erstellst.");
  print("");

  // ========================================
  // 2. EINFACHE KLASSE VERWENDEN
  // ========================================
  print("2. EINFACHE KLASSE VERWENDEN:");
  print("--------------------------------");

  // Objekt erstellen
  Person person1 = Person("Max", 25);

  // Eigenschaften ausgeben
  print("Name: " + person1.name);
  print("Alter: " + person1.alter.toString());

  // ========================================
  // 3. MEHRERE OBJEKTE ERSTELLEN
  // ========================================
  print("");
  print("3. MEHRERE OBJEKTE ERSTELLEN:");
  print("--------------------------------");

  Person person2 = Person("Anna", 30);
  Person person3 = Person("Tom", 22);

  print("Person 2: " + person2.name + ", " + person2.alter.toString() + " Jahre");
  print("Person 3: " + person3.name + ", " + person3.alter.toString() + " Jahre");

  // ========================================
  // 4. EIGENSCHAFTEN ÄNDERN
  // ========================================
  print("");
  print("4. EIGENSCHAFTEN ÄNDERN:");
  print("---------------------------");

  person1.alter = 26;
  print("Max ist jetzt " + person1.alter.toString() + " Jahre alt");

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Auto-Klasse
  Auto auto1 = Auto("BMW", "Blau", 2020);
  print("🚗 Auto: " + auto1.marke + ", Farbe: " + auto1.farbe + ", Jahr: " + auto1.jahr.toString());

  // Buch-Klasse
  Buch buch1 = Buch("Dart für Anfänger", "Max Mustermann", 250);
  print("📚 Buch: " + buch1.titel + " von " + buch1.autor + ", " + buch1.seiten.toString() + " Seiten");

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Klassen sind Baupläne für Objekte");
  print("- Objekte sind Instanzen einer Klasse");
  print("- Du kannst Eigenschaften lesen und ändern");
  print("- Klassen helfen dir, Code zu organisieren");
}

// ========================================
// KLASSEN-DEFINITIONEN
// ========================================

// Einfache Person-Klasse
class Person {
  String name;
  int alter;

  Person(this.name, this.alter);
}

// Auto-Klasse
class Auto {
  String marke;
  String farbe;
  int jahr;

  Auto(this.marke, this.farbe, this.jahr);
}

// Buch-Klasse
class Buch {
  String titel;
  String autor;
  int seiten;

  Buch(this.titel, this.autor, this.seiten);
}

/*
 * ÜBUNGEN:
 * 1. Erstelle eine Klasse für dein Lieblingstier
 * 2. Erstelle ein Objekt von dieser Klasse
 * 3. Erstelle eine Klasse für dein Lieblingsessen
 */
