/*
 * DART GRUNDLAGEN KURS - Lektion 17: Vererbung und Mixins
 * =======================================================
 * 
 * In dieser Lektion lernst du:
 * - Was Vererbung ist
 * - Wie du eine Klasse erbst
 * - Was Mixins sind
 * - Wie du sie verwendest
 */

void main() {
  print("=== VERERBUNG UND MIXINS IN DART ===");
  print("");

  // ========================================
  // 1. WAS IST VERERBUNG?
  // ========================================
  print("1. WAS IST VERERBUNG?");
  print("------------------------");

  print("Vererbung bedeutet: Eine Klasse bekommt alle Eigenschaften");
  print("und Methoden von einer anderen Klasse.");
  print("");

  // ========================================
  // 2. EINFACHE VERERBUNG
  // ========================================
  print("2. EINFACHE VERERBUNG:");
  print("------------------------");

  // Tier-Objekt erstellen
  Tier tier = Tier("Unbekannt", 0);
  tier.macheLaut();

  // Hund erbt von Tier
  Hund hund = Hund("Bello", 5, "Braun");
  hund.macheLaut();
  hund.belle();

  // ========================================
  // 3. VERERBUNG MIT METHODEN
  // ========================================
  print("");
  print("3. VERERBUNG MIT METHODEN:");
  print("----------------------------");

  // Katze erbt von Tier
  Katze katze = Katze("Mieze", 3, "Schwarz");
  katze.macheLaut();
  katze.schnurre();

  // ========================================
  // 4. MIXINS VERWENDEN
  // ========================================
  print("");
  print("4. MIXINS VERWENDEN:");
  print("----------------------");

  // Vogel mit Fliegen-Mixin
  Vogel vogel = Vogel("Tweety", 2, "Gelb");
  vogel.macheLaut();
  vogel.fliege();

  // ========================================
  // 5. PRAKTISCHE BEISPIELE
  // ========================================
  print("");
  print("5. PRAKTISCHE BEISPIELE:");
  print("---------------------------");

  // Verschiedene Tiere
  print("🐕 Hund:");
  hund.zeigeInfo();

  print("");
  print("🐱 Katze:");
  katze.zeigeInfo();

  print("");
  print("🐦 Vogel:");
  vogel.zeigeInfo();

  print("");
  print("🎯 ZUSAMMENFASSUNG:");
  print("- Vererbung lässt dich Code wiederverwenden");
  print("- Eine Klasse kann von einer anderen erben");
  print("- Mixins geben zusätzliche Fähigkeiten");
  print("- Du kannst mehrere Mixins verwenden");
}

// ========================================
// BASIS-KLASSEN UND MIXINS
// ========================================

// Basis-Klasse für alle Tiere
class Tier {
  String name;
  int alter;

  Tier(this.name, this.alter);

  void macheLaut() {
    print(name + " macht einen Laut");
  }

  void zeigeInfo() {
    print("Name: " + name + ", Alter: " + alter.toString() + " Jahre");
  }
}

// Hund erbt von Tier
class Hund extends Tier {
  String farbe;

  Hund(String name, int alter, this.farbe) : super(name, alter);

  void belle() {
    print(name + " bellt: Wuff Wuff!");
  }

  @override
  void macheLaut() {
    print(name + " bellt: Wuff!");
  }
}

// Katze erbt von Tier
class Katze extends Tier {
  String farbe;

  Katze(String name, int alter, this.farbe) : super(name, alter);

  void schnurre() {
    print(name + " schnurrt: Prrrr...");
  }

  @override
  void macheLaut() {
    print(name + " miaut: Miau!");
  }
}

// Mixin für fliegende Tiere
mixin Fliegen {
  void fliege() {
    print("Ich fliege!");
  }
}

// Vogel erbt von Tier und verwendet Fliegen-Mixin
class Vogel extends Tier with Fliegen {
  String farbe;

  Vogel(String name, int alter, this.farbe) : super(name, alter);

  @override
  void macheLaut() {
    print(name + " zwitschert: Piep piep!");
  }
}

/*
 * ÜBUNGEN:
 * Erstelle eine Klasse, die von Tier erbt
 * Erstelle ein Mixin für schwimmende Tiere
 * Erstelle eine Klasse, die mehrere Mixins verwendet
 */
