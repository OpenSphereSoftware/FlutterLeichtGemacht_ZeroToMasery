/*
 * DART GRUNDLAGEN KURS - Lektion 16: Konstruktoren
 * ================================================
 * 
 * In dieser Lektion lernst du:
 * - Was Konstruktoren sind
 * - Verschiedene Arten von Konstruktoren
 * - Wie du sie verwendest
 */

void main() {
  print("=== KONSTRUKTOREN IN DART ===");
  print("");

  // ========================================
  // 1. WAS IST EIN KONSTRUKTOR?
  // ========================================
  print("1. WAS IST EIN KONSTRUKTOR?");
  print("-------------------------------");

  print("Ein Konstruktor ist eine spezielle Methode, die aufgerufen wird,");
  print("wenn du ein neues Objekt erstellst.");
  print("");

  // ========================================
  // 2. STANDARD-KONSTRUKTOR
  // ========================================
  print("2. STANDARD-KONSTRUKTOR:");
  print("---------------------------");

  // Objekt mit Standard-Konstruktor erstellen
  Auto auto1 = Auto("BMW", "Blau", 2020);
  print("🚗 " + auto1.marke + ", " + auto1.farbe + ", " + auto1.jahr.toString());

  // ========================================
  // 3. KONSTRUKTOR MIT STANDARDWERTEN
  // ========================================
  print("");
  print("3. KONSTRUKTOR MIT STANDARDWERTEN:");
  print("------------------------------------");

  // Mit allen Werten
  Person person1 = Person("Max", 25, "Entwickler");
  print("👤 " + person1.name + ", " + person1.alter.toString() + ", " + person1.beruf);

  // Mit Standardwerten
  Person person2 = Person("Anna", 30);
  print("👤 " + person2.name + ", " + person2.alter.toString() + ", " + person2.beruf);

  // ========================================
  // 4. BENANNTE PARAMETER
  // ========================================
  print("");
  print("4. BENANNTE PARAMETER:");
  print("------------------------");

  // Mit benannten Parametern
  Buch buch1 = Buch(titel: "Dart für Anfänger", autor: "Max Mustermann", seiten: 250);
  print("📚 " + buch1.titel + " von " + buch1.autor + ", " + buch1.seiten.toString() + " Seiten");

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Student mit verschiedenen Konstruktoren
  Student student1 = Student("Lisa", 20, "Informatik");
  Student student2 = Student.ohneStudiengang("Tom", 22);
  Student student3 = Student.anonym();

  print("🎓 " + student1.name + " studiert " + student1.studiengang);
  print("🎓 " + student2.name + " studiert " + student2.studiengang);
  print("🎓 " + student3.name + " studiert " + student3.studiengang);

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Konstruktoren werden beim Erstellen von Objekten aufgerufen");
  print("- Du kannst Standardwerte für Parameter setzen");
  print("- Benannte Parameter machen den Code lesbarer");
  print("- Verschiedene Konstruktoren für verschiedene Fälle");
}

// ========================================
// KLASSEN-DEFINITIONEN
// ========================================

// Auto mit Standard-Konstruktor
class Auto {
  String marke;
  String farbe;
  int jahr;

  Auto(this.marke, this.farbe, this.jahr);
}

// Person mit Standardwerten
class Person {
  String name;
  int alter;
  String beruf;

  Person(this.name, this.alter, [this.beruf = "Unbekannt"]);
}

// Buch mit benannten Parametern
class Buch {
  String titel;
  String autor;
  int seiten;

  Buch({required this.titel, required this.autor, required this.seiten});
}

// Student mit verschiedenen Konstruktoren
class Student {
  String name;
  int alter;
  String studiengang;

  // Hauptkonstruktor
  Student(this.name, this.alter, this.studiengang);

  // Konstruktor ohne Studiengang
  Student.ohneStudiengang(this.name, this.alter) : studiengang = "Unbekannt";

  // Anonymer Student
  Student.anonym() : name = "Anonym", alter = 0, studiengang = "Unbekannt";
}

/*
 * ÜBUNGEN:
 * Erstelle eine Klasse mit einem Konstruktor, der Standardwerte hat
 * Erstelle eine Klasse mit benannten Parametern
 */
